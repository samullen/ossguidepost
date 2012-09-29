When /^I search for difficulty (\d+) "(.*?)" projects$/ do |difficult, language|
  fill_in :search_text, :with => "example"
  select "ruby", :from => "Language"
  select "score", :from => "Difficulty"

  click_button "Search"
end
