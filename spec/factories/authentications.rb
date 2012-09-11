# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :authentication do
    user_id 1001
    provider "example_provider"
    uid "313159"
    token "1235813213455"
  end

  factory :github_authentication, :parent => :authentication do
    username "example_username"
  end
end
