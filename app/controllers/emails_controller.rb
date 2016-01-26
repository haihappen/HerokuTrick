class EmailsController < ApplicationController
  def index
    render :new
  end

  def create
    email.attributes = params.require(:email).permit(:to)
    if email.valid?
      EmailMailer.email(email.to).deliver_later
    end
    render :new
  end

private
  helper_method def email
    @email ||= Email.new
  end
end
