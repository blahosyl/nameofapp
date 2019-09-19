class Product < ApplicationRecord

  # return a filtered list of products
  def self.search(search_term)
    if Rails.env.development?
      @products = Product.where("name LIKE ?", "%#{search_term}%") #% is the wildcard char, LIKE is an SQL matching operator that disregards capitalisation and spaces when matching
    else
      @products = Product.where("name ilike ?", "%#{search_term}%") #% is the wildcard char, ilike is a Postrgres matching operator that disregards capitalisation and spaces when matching
    end
  end
end
