class User < ActiveRecord::Base
  before_create :create_remember_token
  before_save { email.downcase! }

  has_many :user_remember_tokens, inverse_of: :user

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }

  has_secure_password
  validates :password, length: { minimum: 6 }

  validate :check_user_flags

  scope :admin, -> { where(admin: true) }
  scope :not_admin, -> { where(arel_table[:admin].eq(nil).or(arel_table[:admin].eq(false))) }
  scope :demo, -> { where(demo: true) }
  scope :not_demo, -> { where(arel_table[:demo].eq(nil).or(arel_table[:demo].eq(false))) }

  def self.regular
    not_admin.not_demo
  end

  def self.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def self.encrypt(token)
    return nil if token.nil?
    Digest::SHA1.hexdigest(token.to_s)
  end

  def regular?
    !admin? && !demo?
  end

  def restricted?
    demo? || email == 'aikido@aikipeace.com'
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

  def to_h
    {id: id, email: email, admin: admin?, demo: demo?, regular: regular?}
  end

  private

  def check_user_flags
    errors.add(:base, 'cannot be both admin and demo user') if admin? && demo?
  end

  def create_remember_token
    self.remember_token = User.encrypt(User.new_remember_token)
  end
end
