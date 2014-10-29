Given /^I am on (.+)$/ do |url|
  browser = Capybara.current_session.driver.browser
if browser.respond_to?(:clear_cookies)
  # Rack::MockSession
  browser.clear_cookies
elsif browser.respond_to?(:manage) and browser.manage.respond_to?(:delete_all_cookies)
  # Selenium::WebDriver
  browser.manage.delete_all_cookies
else
  raise "Don't know how to clear cookies. Weird driver?"
end
  visit "http://theassetbank-qa.unilever.com/unileverssoportal.aspx"
  sleep 4
end
 
When /^I fill in "([^"]*)" with "([^"]*)"$/ do |field, value|
	sleep 1
  fill_in(field, :with => value)
end
 
When /^I press "([^"]*)"$/ do |button|
  click_button(button)
end
 
Then /^I should see "([^"]*)"$/ do |text|
  sleep 3
  page.should have_content(text)
end

When /^I select to agree terms$/ do
	page.find(:css, '#termsAgree').click
end

When /^I press submit$/ do
	sleep 1
	page.find(:css, '#termsSubmit').click
end

Then /^I should see the simple search box$/ do
	sleep 1
	page.find(:css, '#TeleScopeClassicLink').click
end

When /^I select the s1 option from the dropdown$/ do
  page.find(:xpath, ".//*[@id='repository']/option[2]").click
end

Then /^I will navigate back to the UAG login screen$/ do
  sleep 1
  browser = Capybara.current_session.driver.browser
if browser.respond_to?(:clear_cookies)
  # Rack::MockSession
  browser.clear_cookies
elsif browser.respond_to?(:manage) and browser.manage.respond_to?(:delete_all_cookies)
  # Selenium::WebDriver
  browser.manage.delete_all_cookies
else
  raise "Don't know how to clear cookies. Weird driver?"
end
  sleep 1
  visit "http://theassetbank-qa.unilever.com/unileverssoportal.aspx"
end

When /^I select the s2 option from the dropdown$/ do
  page.find(:xpath, ".//*[@id='repository']/option[1]").click
end

When /^I select the s3 option from the dropdown$/ do
  page.find(:xpath, ".//*[@id='repository']/option[3]").click
end

When /^I select the advanced link$/ do
  page.find(:css, '#TeleScopeClassicLink').click
  sleep 20
  page.save_screenshot("/Users/chrisfoots/Documents.pdf")
end
