FactoryBot.define do
    factory :comment do
        body { "comment" }
        product
        user
        rating { 5 }
    end
end
