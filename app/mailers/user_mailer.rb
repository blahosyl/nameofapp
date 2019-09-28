class UserMailer < ApplicationMailer
  def welcome(user)
    mail(to: user.email, subject: "Welcome to OrangeBerlin")
  end

  # send automatic message based on data from contact from
  def thank_you(params)
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]

    mail(from: @email,
      to: "sylvia.blaho@gmail.com",
      subject: "A new contact form message from #{@name}",
      body: @message)
  end

  def payment_received(order)
    @order = order
    @user = order.user
    @product = order.product

    mail(from: "sylvia.blaho@gmail.com",
      to: @user.email,
      subject: "Thank you for your order!",
      body: "We have received your order and will process it as soon as possible.")
  end

end
