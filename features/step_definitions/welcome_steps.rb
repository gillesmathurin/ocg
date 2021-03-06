Given /^I have not visited the site$/ do
end

Given /^the site has no contents$/ do
  @articles = []
  @events = []
end

When /^I enter the welcome page$/ do
  visit root_path
end

Then /^I should see a "([^\"]*)" message$/ do |text|
  visit root_path
  response.should contain(text)
end

Then /^I should see a "([^\"]*)" second message$/ do |text|
  visit root_path
  response.should contain(text)
end

Then /^I shouls see "([^\"]*)"$/ do |text|
  visit root_path
  response.should contain(text)
end

Given /^the site has contents$/ do
  @articles = []
  @events = []
  4.times { 
    @articles << Article.create!(:title => "the title")
    @events << Event.create!(:title => "the title", :start_date => Date.today+1)
  }
end

Then /^I should see the 4 most recent articles$/ do
  visit root_path
  response.should have_selector("li.article", :content => "the title")
end

Then /^I should see the next 4 events$/ do
  visit root_path
  response.should have_selector("li.event", :content => "the title")
end

When /^I follow a recent article link$/ do
  visit root_path
  click_link("Lire …")
end

When /^I follow a next event link$/ do
  visit root_path
  click_link("+ d'infos …")
end


