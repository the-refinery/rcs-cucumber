Given(/^I am on the homepage$/) do
 visit 'http://rcs.staging.t-r.io'
end
Then(/^I should see the social media links$/) do | links |
  links.hashes.each do | link |
    #place value
  end
end