require 'rails_helper'

describe Comment do
    context "create a comment" do
        let(:product) { FactoryBot.create(:product) }
        let(:user) { FactoryBot.create(:user) }

        it "is not valid without a body" do
            expect(Comment.new(user: user, product: product, rating: 4)).not_to be_valid
        end

        it "is not valid without a product" do
            expect(Comment.new(user: user, rating: 4, body:"Comment")).not_to be_valid
        end

        it "is not valid without a user" do
            expect(Comment.new(product: product, rating: 4, body:"Comment")).not_to be_valid
        end

        it "is not valid without a rating" do
            expect(Comment.new(user: user, product: product, body:"Comment")).not_to be_valid
        end

        it "is not valid with rating being a float" do
            expect(Comment.new(body: "comment", user: user, product: product, rating: 4.5)).not_to be_valid
        end

        it "is valid when body, user, product and rating (integer) present" do
            expect(Comment.new(body: "comment", user: user, product: product, rating: 5)).to be_valid
        end
    end
end
