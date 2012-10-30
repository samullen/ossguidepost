Given /^there is a User with a Project$/ do
  user = FactoryGirl.create :user
  @project = FactoryGirl.create :project, :user => user
end

Given /^I have a Project$/ do
  @current_user ||= User.first
  @project = FactoryGirl.create :project, :user => @current_user
end

Given /^there are (\d+) "(.*?)" projects with difficulty below (\d+)$/ do |qty, language, difficulty|
  user = FactoryGirl.create :user
  difficulty = difficulty.to_i - 1

  qty.to_i.times do |i|
    FactoryGirl.create :project, :user => user, :language => language, :difficulty => rand(difficulty) + 1
  end
end

When /^I import my GitHub Projects$/ do
  find(:link, "github-import").click
end

When /^I update the Project$/ do
  click_button "Update Project"
end

When /^I update the Project from origin$/ do
  find(:link, "project-origin_update").click
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
