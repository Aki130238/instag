class SampleMailer < ApplicationMailer
  def send_when_create(user)
    @user = user

    mail to: "akira_iseki@diveintocode.jp", subject: "投稿されました"
  end
end
