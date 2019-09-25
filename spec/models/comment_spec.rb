require 'rails_helper'

describe Comment do

  context "when the comment is created" do

    let(:product) { Product.new(name: "anything", description: "anything", price: 12, image_url: "anything") }
    let(:user) { User.create!(first_name: "Test User", email:"test@gmail.com", password:"123455678") }

    before do
      product.comments.create!(rating: 4, user: user, body: "comment")
    end

    it "comment not valid without a user" do
      expect(Comment.new(user_id: nil, body: "anything")).not_to be_valid
    end

    it "comment not valid without a rating" do
    expect(Comment.new(body: "anything", user: user, product: product, rating: nil )).not_to be_valid
    end

    it "is not valid without a body" do
      expect(Comment.new(user: user, product: product, rating: 5)).not_to be_valid
    end

    it "is not valid without a product" do
      expect(build(:comment, product:nil)).not_to be_valid
    end

  end

end
