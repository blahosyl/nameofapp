FactoryBot.define do
  sequence(:email) {|n| "test#{n}@example.com"}
  factory :user do
    email
    password {"1234567890"}
    first_name {"Test"}
    last_name {"User"}
    admin {false}
  end
end
