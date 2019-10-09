Then("I should be on {string} page") do |string|
    article = Article.find_by(title: string)
    expect(current_path).to eq article_path(article) 
end

Then("I should see {string}") do |string|
    expect(page).to have_content string
end

Then("I should be on the home page") do
    expect(current_path).to eq root_path
end
