Given /^I am on (.+)$/ do |page|
  case page

  when /the (?:root|home) page/
    visit root_path

  # Projects

  when /the User's Project page/
    @project ||= Project.last
    user = @project.user
    visit user_project_path(user, @project)

  when /my Project's page/
    @current_user ||= User.first
    @project ||= Project.last
    visit user_project_path(@current_user, @project)

  when /my Project's edit page/
    @current_user ||= User.first
    @project ||= Project.last
    visit edit_user_project_path(@current_user, @project)

  else 
    raise

  end
end

Then /^I should be on (.+)$/ do |page|
  current_path.should == case page

  when /the root page/
    root_path

  when /the Project page/
    project = Project.last
    user = project.user

    user_project_path(user, project)

  else 
    raise

  end
end
