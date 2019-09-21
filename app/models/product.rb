class Product < ApplicationRecord
  has_many :comments

  # return a filtered list of products
  def self.search(search_term)
    if Rails.env.development?
      @products = Product.where("name LIKE ?", "%#{search_term}%") #% is the wildcard char, LIKE is an SQL matching operator that disregards capitalisation and spaces when matching
    else
      @products = Product.where("name ilike ?", "%#{search_term}%") #% is the wildcard char, ilike is a Postrgres matching operator that disregards capitalisation and spaces when matching
    end
  end

  #return the comment with highest rating for this product
  def highest_rating_comment
    comments.rating_desc.first
  end

  #return the comment with lowest rating for this product
  def lowest_rating_comment
    comments.rating_asc.first
  end
end
