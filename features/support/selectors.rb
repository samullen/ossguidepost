Capybara.add_selector(:link) do
  xpath {|rel| ".//a[contains(@rel, '#{rel}')]"}
end
