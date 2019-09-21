class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :product

  #rank the ratings in descending order
  scope :rating_desc, -> { order(rating: :desc) }

  #rank the ratings in ascending order
  scope :rating_asc, -> { order(rating: :asc) }

end
