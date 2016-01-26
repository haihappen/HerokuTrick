class EmailsController < ApplicationController
  def index
    redirect_to action: :new
  end

  def create
    email.attributes = params.require(:email).permit(:to)

    if email.save
      EmailMailer.email(email).deliver_later
    end

    redirect_to action: :new
  end

private
  helper_method def email
    @email ||= Email.new
  end
end
