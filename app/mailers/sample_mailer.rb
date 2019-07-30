class SampleMailer < ApplicationMailer
  def send_when_create(user)
    @user = user

    mail to: @user.email , subject: "投稿されました"
  end
end
