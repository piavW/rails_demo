Given("I visit the {string} page") do |string|
visit root_path
end

When("I click {string} link") do |string|
    expect(page).to have_content string
end

When("I fill in {string} with {string}") do |string, string2|
    expect(input).to have_content string
end

When("I click {string} button") do |string|
pending # Write code here that turns the phrase above into concrete actions
end

Then("I should be on {string} page") do |string|
pending # Write code here that turns the phrase above into concrete actions
end
  