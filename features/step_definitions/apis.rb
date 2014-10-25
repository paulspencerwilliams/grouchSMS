Given(/^the following users exist$/) do |table|
  table.hashes.each do |attributes|
    User.create!(attributes)
  end
end

