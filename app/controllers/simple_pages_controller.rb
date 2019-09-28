class SimplePagesController < ApplicationController
  def index
  end

  def landing_page
    @featured_product = Product.first
    @products = Product.limit(4)
  end

  def contact_us
    UserMailer.thank_you(params).deliver
  end

end
