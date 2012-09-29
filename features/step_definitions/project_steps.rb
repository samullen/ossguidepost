Given /^there is a User with a Project$/ do
  user = FactoryGirl.create :user
  @project = FactoryGirl.create :project, :user => user
end

Given /^I have a Project$/ do
  @current_user ||= User.first
  @project = FactoryGirl.create :project, :user => @current_user
end

Given /^there are (\d+) "(.*?)" projets scored below (\d+)$/ do |qty, language, score|
  user = FactoryGirl.create :user

  qty.to_i.times do |i|
    FactoryGirl.create :project, :name => "Example Project #{i}", :user => user, :language => language, :score => rand(score.to_i) + 1
  end
end

When /^I import my GitHub Projects$/ do
  find(:link, "github-import").click
end

When /^I update the Project$/ do
  click_button "Update Project"
end

Then /^I should see a successful import message$/ do
  page.should have_content "Your github repositories have been imported."
end

Then /^I should see my Projects listed on my Profile$/ do
  all("table.projects-list > tbody > tr").size.should == 14 
end

Then /^I should see a successful Project update message$/ do
  page.should have_content "Project was successfully updated."
end
