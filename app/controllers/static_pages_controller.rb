class StaticPagesController < ApplicationController
  def show
  end

  def about
  end

  def faq
  end

  def cancellation
  end

  def contact
  end

  def send_mail
    name = params[:name]
    email = params[:email]
    body = params[:comments]
    #ContactMailer.contact_mailer(name, email, body).deliver
    redirect_to static_pages_contact_path, notice: 'Message sent'
  end

  def tou
  end
end
