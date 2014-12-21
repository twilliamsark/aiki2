class UserMailer < ActionMailer::Base
  def password_reset(user, note=nil)
    @user = user
    @note = note

    mail(to: user.email, from: EMAIL_ADDR, bcc: DEV_EMAIL, subject: "Aikipeace Video Library - Password Reset")
  end

  def invite_review_user(user, note=nil)
    @user = user
    @note = note

    mail(to: user.email, from: EMAIL_ADDR, bcc: [EMAIL_ADDR, DEV_EMAIL], subject: "Aikipeace Video Library - Sempi Invite")
  end
end
