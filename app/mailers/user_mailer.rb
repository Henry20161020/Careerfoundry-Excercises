class UserMailer < ApplicationMailer
  default from: "xxxxxxxxx@xxxxx.xx"

  def contact_form(email, name, message)
    @message = message
    mail(from: email,
         to: 'henryli76@gmail.com',
         subject: "A new contact form message from #{name}")
  end
end
