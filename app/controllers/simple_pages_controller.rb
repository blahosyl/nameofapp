class SimplePagesController < ApplicationController
  def index
  end
end

class SimplePagesController < ApplicationController
  def landing_page
    @featured_product = Product.first
    byebug
    @products = Product.limit(4)
  end

  # send automatic message based on data from contact from
  def thank_you
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
    ActionMailer::Base.mail(from: @email,
      to: "sylvia.blaho@gmail.com",
      subject: "A new contact form message from #{@name}",
      body: @message).deliver_now
      ActionMailer::Base.mail(from: "sylvia.blaho@gmail.com",
        to: @email,
        subject: "Thank you for your message to OrangeBerlin",
        body: "Hey #{@name}, thank you for contacting us! We'll get back to you soon!").deliver_now
    end

  end
