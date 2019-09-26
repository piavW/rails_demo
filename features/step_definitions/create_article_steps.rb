Given("I visit the {string} page") do |string|
visit root_path
end

When("I click {string} link/button") do |string|
   click_on(string)
end

When("I fill in {string} with {string}") do |string, string2|
    fill_in("title", :with => string, :with => string2)
end

Then("I should be on {string} page") do |string|
pending # Write code here that turns the phrase above into concrete actions
end

When("I should see {string}") do |string|
    pending
end