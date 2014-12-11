class EditorMailer < ActionMailer::Base
  def review_email(user, note, waza, format = nil)
    if format
      wf = WazaFormat.find_by(waza: waza, format: format)
      @target = wf.name if wf
    end
    @user = user
    @target = waza.name if @target.blank?
    @waza = waza
    @format = format
    @note = note

    mail(to: EMAIL_ADDR, from: user.email, subject: "Review Notes for #{@target}")
  end
end
