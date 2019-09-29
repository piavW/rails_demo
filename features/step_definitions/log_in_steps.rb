Given("following users exist") do |table|
    table.hashes.each do |user|
        FactoryBot.create(:user, user)
      end
end

Given("following article exist") do |table|
    table.hashes.each do |article_hash|
        FactoryBot.create(:article, article_hash)
    end
end