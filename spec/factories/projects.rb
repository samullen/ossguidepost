# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :project do
    user_id 1001
    sequence(:name) {|i| "example_project#{i}"}
    sequence(:full_name) {|i| "username/example_project#{i}" }
  end

#   factory :github_project, :parent => :project do
#   end
end
