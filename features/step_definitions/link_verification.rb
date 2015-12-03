Given(/^I am on the homepage$/) do
 visit 'http://rcs.staging.t-r.io'
end

When(/^I click link "(.*?)"$/) do | link |
  first(:link, link).click
end

Then(/^I should see the social media links$/) do | links |
  #page.should have_text "Products"
  links.hashes.each do | link |
    page.should have_link("", {href: link["url"]})
  end
end

Then(/^I should see title "(.*?)"$/) do | title |
  page.should have_text title
end