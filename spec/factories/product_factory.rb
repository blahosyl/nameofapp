FactoryBot.define do
    sequence(:name) { |n| "#{n}" }

    factory :product do
      name
      price {84}
      description {"anything"}
      image_url {"anything"}
    end

  end
