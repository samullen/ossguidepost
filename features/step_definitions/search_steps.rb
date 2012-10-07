When /^I search for difficulty (\d+) "(.*?)" projects$/ do |difficulty, language|
  fill_in "Search", :with => "example"
  fill_in "Language", :with => "ruby"
  select difficulty, :from => "Difficulty"

  click_button "Search"
end
