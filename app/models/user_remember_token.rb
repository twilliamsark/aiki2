class UserRememberToken < ActiveRecord::Base
  belongs_to :user, inverse_of: :user_remember_tokens

  validates_presence_of :remember_token

  attr_reader :token

  #TODO: Change signed_out:boolean to signed_out_at:datetime.
  #do in 2 stages, first add singed_out_at and populate according to singed_out boolean and updated_at
  #then nuke signed_out boolean

  scope :signed_in, -> { where(signed_out: false) }
  scope :signed_out, -> { where(arel_table[:signed_out].eq(nil).or(arel_table[:signed_out].eq(true))) }
  scope :not_expired, -> { where(arel_table[:expires_at].gteq(DateTime.current)) }
  scope :expired, -> { where(arel_table[:expires_at].lt(DateTime.current)) }

  def initialize(args)
    super(args)
    @token = SecureRandom.urlsafe_base64
    self.remember_token = UserRememberToken.encrypt(@token)
    self.signed_out = false
  end

  def self.sign_in(user, options={})
    options.reverse_merge!(expires_at: nil, ip: nil)
    urt = user.user_remember_tokens.create(options)
    urt.token
  end

  def self.encrypt(value)
    return nil if value.nil?
    Digest::SHA1.hexdigest(value.to_s)
  end

  def self.find_user(token)
    urt = signed_in.not_expired.find_by(remember_token: encrypt(token))
    urt.nil? ? nil : urt.user
  end

  def self.logout(token)
    urt = find_by(remember_token: encrypt(token))
    urt.update_column(:signed_out, true) unless urt.nil?
  end
end
