Given /^I am on (.+)$/ do |page|
 case page
  when /the (?:root|home) page/
    visit root_path

  when /the User's Project page/
    project = Project.last
    user = project.user
    visit user_project_path(user, project)


  else 
    raise

  end
end

Then /^I should be on (.+)$/ do |page|
  current_path.should == case page

  when /the root page/
    root_path


  else 
    raise

  end
end
