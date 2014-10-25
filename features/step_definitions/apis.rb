World(Rack::Test::Methods)

Given(/^the following users exist$/) do |table|
  table.hashes.each do |attributes|
    FactoryGirl.create(:user, attributes)
  end
end

When /^I send a GET request for "([^\"]*)"$/ do |path|
    @last_response = get path
end

Then(/^should get the following user details$/) do |table|
  result  = JSON.parse(@last_response.body)
  expect(result.length).to eq(1)
  expect(result[0]["email"]).to eq(table.hashes[0]["email"])
  expect(result[0]["weather"].to_s).to eq(table.hashes[0]["weather"])
  expect(result[0]["latitude"].to_s).to eq(table.hashes[0]["latitude"])
  expect(result[0]["longitude"].to_s).to eq(table.hashes[0]["longitude"])
  expect(result[0]["phone"]).to eq(table.hashes[0]["phone"])
end
