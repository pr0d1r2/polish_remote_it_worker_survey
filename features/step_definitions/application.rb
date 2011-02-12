Then /^Page should have title "([^"]*)"$/ do |title|
  page.should have_xpath( "//head/title[contains(text(), \"#{title}\")]")
end

Then /^I should see "([^"]*)" within header$/ do |text|
  header_found = false
  text_found_in_header = false
  [ :h1, :h2 ].each do |header|
    next unless page.has_xpath?("//#{header}")
    header_found = true
    break if text_found_in_header
    text_found_in_header = have_xpath("//#{header}[contains(text(), \"#{text}\"]")
  end
  raise "No headers" unless header_found
  raise "No text \"#{text}\" in any headers" unless text_found_in_header
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

Then /^I should see "([^"]*)" within new_pss_questionaire link$/ do |text|
  Then "I should see \"#{text}\" within \"a[@href='#{new_pss_questionaire_path}']\""
end

Then /^I should see "([^"]*)" within "([^"]*)" point of list with selection "([^"]*)"$/ do |text, number, range|
  start = range.split("-").first.to_i
  the_end = range.split("-").last.to_i
  start.upto(the_end) do |n|
    page.should have_xpath( "//ol/li[#{number}]/div[contains(text(), \"#{text}\")]/../input[@type='radio' and @value='#{n}']")
  end
end

Then /^I should see button "([^\"]*)"(?: within "([^\"]*)")?$/ do |text, selector|
  with_scope(selector) do
    page.should have_button(text)
  end
end

Then /^I should see "([^"]*)" within "([^"]*)" point of list$/ do |text, number|
  page.should have_xpath( "//ol/li[#{number}][contains(text(), \"#{text}\")]")
end

Then /^I should see "([^"]*)" within "([^"]*)" point of list with dropdown selection of "([^"]*)" options$/ do |text, number, option_number|
  1.upto(option_number.to_i) do |n|
    page.should have_xpath( "//ol/li[#{number}]/div[contains(text(), \"#{text}\")]/../select/option[#{n} and @value='#{n}']")
  end
end
