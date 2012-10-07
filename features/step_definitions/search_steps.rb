When /^I search for difficulty (\d+) "(.*?)" projects$/ do |difficulty, language|
  fill_in "Search", :with => "example"
  fill_in "Language", :with => "ruby"
  select difficulty, :from => "Difficulty"

  click_button "Search"
end

Then /^I should see (\d+) search results$/ do |qty|
  within "#search_results" do
    all(".search_result").size.should == qty.to_i
  end
end
