Then /^Page should have title "([^"]*)"$/ do |title|
  page.should have_xpath( "//head/title[contains(text(), \"#{title}\")]")
end

Then /^I should see "([^"]*)" within header$/ do |text|
  header_found = false
  text_found_in_header = false
  [ :h1, :h2 ].each do |header|
    next unless page.has_xpath?("//#{header}")
    header_found = true
    text_found_in_header = page.has_xpath?("//#{header}[contains(text(), \"#{text}\")]")
    break if text_found_in_header
  end
  raise "No headers" unless header_found
  raise "No text \"#{text}\" in any headers" unless text_found_in_header
end

Then /^I should see "([^"]*)" within paragraph$/ do |text|
end

Then /^I should see "([^"]*)" within paragraph in numbered list$/ do |text|
  Then "I should see \"#{text}\" within \"ol > li > p\""
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

Then /^I should see button "([^\"]*)"(?: within "([^\"]*)")?$/ do |text, selector|
  with_scope(selector) do
    page.should have_button(text)
  end
end

Then /^I should see "([^"]*)" within "([^"]*)" point of list with dropdown selection of "([^"]*)" options$/ do |text, number, option_number|
  1.upto(option_number.to_i) do |n|
    page.should have_xpath( "//ol/li[#{number}]/div[contains(text(), \"#{text}\")]/../select/option[#{n} and @value='#{n}']")
  end
end

Then /^I should see "([^"]*)" within "([^"]*)" point of list with dropdown selection of "([^"]*)" options starting from "([^"]*)"$/ do |text, number, option_number, start_number|
  start_number = start_number.to_i
  start_number.upto(option_number.to_i-1+start_number) do |n|
    page.should have_xpath( "//ol/li[#{number}]/div[contains(text(), \"#{text}\")]/../select/option[#{n-start_number+1} and @value='#{n}']")
  end
end

Then /^I select "([^"]*)" from field "([^"]*)"$/ do |value, field|
  within(:xpath, "//ol/li[#{field}]/select") do
    select(find(:xpath, "//ol/li[#{field}]/select/option[@value='#{value.to_i}']").text)
  end
end

Then /^I should have created new "([^"]*)" with following fields$/ do |the_object, table|
  the_model = the_object.camelize.constantize
  last_record = the_model.last
  table.raw.each do |row|
    begin
      value = last_record.send("field_#{row[0]}")
      value.should == row[1].to_i
    rescue RSpec::Expectations::ExpectationNotMetError
      raise RSpec::Expectations::ExpectationNotMetError, "field not equal: #{row.inspect}, was #{value}, expected: #{row[1]}"
    end
  end
end

Then /^I should have "([^"]*)" owned by last identity finished$/ do |the_object|
  the_object.camelize.constantize.last.identity.should == Identity.find(:first, :order => 'created_at DESC', :conditions => {:finished => true})
end

Then /^I should see "([^"]*)" within "([^"]*)" point of list$/ do |text, number|
  page.should have_xpath( "//ol/li[#{number}]/div[contains(text(), \"#{text}\")]" )
end

Then /^I should see "([^"]*)" within "([^"]*)" point of list with text field$/ do |text, number|
  page.should have_xpath( "//ol/li[#{number}]/div[contains(text(), \"#{text}\")]/../input[@type='text']")
end

Then /^I should see "([^"]*)" within "([^"]*)" point of list with dropdown boolean selection$/ do |text, number|
  page.should have_xpath( "//ol/li[#{number}]/div[contains(text(), \"#{text}\")]/../select/option[@value='true']")
  page.should have_xpath( "//ol/li[#{number}]/div[contains(text(), \"#{text}\")]/../select/option[@value='false']")
end

Then /^I should have created new "([^"]*)" with following values$/ do |the_object, table|
  the_model = the_object.camelize.constantize
  last_record = the_model.last
  table.raw.each do |row|
    begin
      value = last_record.send(row[0]).to_s
      value.should == row[1].to_s
    rescue RSpec::Expectations::ExpectationNotMetError
      raise RSpec::Expectations::ExpectationNotMetError, "field not equal: #{row.inspect}, was #{value}, expected: #{row[1]}"
    end
  end

end

Then /^I should see link "([^"]*)"$/ do |link|
  Then "I should see \"#{link}\" within \"a[@href='#{link}']\""
end

Then /^I should see link "([^"]*)" to start page$/ do |text|
  Then "I should see \"#{text}\" within \"a[@href='#{welcome_path}']\""
end
