When /^I import my GitHub Projects$/ do
  find(:link, "github-import").click
end

Then /^I should see a successful import message$/ do
  page.should have_content "Your github repositories have been imported."
end

Then /^I should see my Projects listed on my Profile$/ do
  all("table.projects-list > tbody > tr").size.should == 14 
end
