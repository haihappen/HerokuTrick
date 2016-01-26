class EmailMailer < ApplicationMailer
  def email(email)
    mail(to: email.to, subject: 'A empty email just to proof the Heroku trick') do |format|
      format.text { 'Ok, some text to make Postmark happy!' }
    end
  end
end
