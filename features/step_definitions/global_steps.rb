Given /^show me the page$/ do
    save_and_open_page
end

Then /^the page should load successfully$/ do
  page.status_code.should == 200
end
