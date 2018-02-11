class UserMailer < ApplicationMailer
  default from: "xxxxxxxxx@xxxxx.xx"

  def contact_form(email, name, message)
    @message = message
    mail(from: email,
         to: 'henryli76@gmail.com',
         subject: "A new contact form message from #{name}")
  end

  def welcome(user)
    @appname = "Saware"
    mail(to: user.email,
         subject: "Welcome to #{@appname}!")
  end

  def thank_you(email,name,message)
    @message = message
    mail(from: 'customer_service@saware.com',
         to: email,
         subject: "Thank you, #{name}")
  end
end
