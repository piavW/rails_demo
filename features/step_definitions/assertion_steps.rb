Then("I should be on {string} page") do |string|
    article = Article.find_by(title: string)
    expect(current_path).to eq article_path(article) 
end

When("I should see {string}") do |string|
    expect(page).to have_content string
end