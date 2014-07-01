class User < ActiveRecord::Base
  before_create :create_remember_token
  before_save { email.downcase! }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }

  has_secure_password
  validates :password, length: { minimum: 6 }

  scope :admin, -> { where(admin: true) }
  scope :demo, -> { where(demo: true) }
  scope :regular, -> { where("admin = ? and demo = ?", false, false) }

  def User.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def User.encrypt(token)
    return nil if token.nil?
    Digest::SHA1.hexdigest(token.to_s)
  end

  def sign_in(options={})
    options.reverse_merge!(remember_token: nil, ip: nil)

    self.remember_token = nil
    self.remember_token = User.encrypt(options[:remember_token]) if options[:remember_token]

    self.last_sign_in_at = current_sign_in_at
    self.current_sign_in_at = Time.now.utc

    self.last_sign_in_ip = current_sign_in_ip
    self.current_sign_in_ip = options[:ip] if options[:ip]

    self.sign_in_count ||= 0
    self.sign_in_count += 1

    save(validate: false)
  end

  private

  def create_remember_token
    self.remember_token = User.encrypt(User.new_remember_token)
  end
end
