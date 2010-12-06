Then /^Page should have title "([^"]*)"$/ do |title|
  page.should have_xpath( "//head/title[contains(text(), \"#{title}\")]")
end

Then /^I should see "([^"]*)" within header$/ do |text|
  Then "I should see \"#{text}\" within \"h1\""
end

Then /^I should see "([^"]*)" within paragraph$/ do |text|
  Then "I should see \"#{text}\" within \"p\""
end

Then /^I should see "([^"]*)" within agreement link$/ do |text|
  Then "I should see \"#{text}\" within \"a[@href='#{agreement_path}']\""
end
