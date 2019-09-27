Given("following users exist") do |table|
    table.hashes.each do |user_hash|
        FactoryBot.create(:user, user_hash)
      end
end

Given("following article exist") do |table|
    table.hashes.each do |article_hash|
        FactoryBot.create(:article, article_hash)
    end
end