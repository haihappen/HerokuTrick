class EmailMailer < ApplicationMailer
  def email(email)
    mail(to: email.to, subject: 'A empty email just to proof the Heroku trick') do |format|
      format.text { '' }
    end
  end
end
