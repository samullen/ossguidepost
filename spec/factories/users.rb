# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    sequence(:username) {|i| "username#{i}" }
    sequence(:email) {|i| "user#{i}@example.com" }
  end
end
