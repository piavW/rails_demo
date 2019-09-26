Given("I visit the {string} page") do |string|
    visit root_path
end

When("I click {string} link/button") do |string|
   click_on string
end

When("I fill in {string} with {string}") do |string, string2|
    fill_in string, :with => string2
end

Then("I should be on {string} page") do |string|
    article = Article.find_by(title: string)
    expect(current_path).to eq article_path(article) 
end

When("I should see {string}") do |string|
    expect(page).to have_content string
end