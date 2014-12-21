class UserMailer < ActionMailer::Base
  default from: "from@example.com"
end

class UserMailer < ActionMailer::Base
  def password_reset(user, note=nil)
    @user = user
    @note = note

    mail(to: user.email, from: EMAIL_ADDR, bcc: DEV_EMAIL, subject: "Aikipeace Video Library - Password Reset")
  end
end
