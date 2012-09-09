# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :project do
    user_id 1001
    name "example_project"
    full_name "username/example_project"
  end
end
