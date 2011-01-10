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

Then /^I should see "([^"]*)" in numbered list with header "([^"]*)"$/ do |text, header_text|
  page.should have_xpath( "//ul/li/div[contains(text(), \"#{header_text}\")]/../p[contains(text(), \"#{text}\")]")
end

Then /^I should see "([^"]*)" by checkbox$/ do |text|
  page.should have_xpath( "//input[@type='checkbox']/../p[contains(text(), \"#{text}\")]")
end

Then /^I should see "([^"]*)" within pss_questionaire link$/ do |text|
  Then "I should see \"#{text}\" within \"a[@href='#{pss_questionaire_path}']\""
end

