Given("I visit the {string} page") do |string|
    visit root_path
end

When("I click on {string}") do |string|
   click_on string
end
When("I check on {string}") do |string|
    check string
 end

When("I fill in {string} with {string}") do |string, string2|
    fill_in string, :with => string2
end