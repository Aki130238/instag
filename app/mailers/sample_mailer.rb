class SampleMailer < ApplicationMailer
  def send_when_create(user)
    @user = user

    mail to: @user.mail , subject: "投稿されました"
  end
end
