# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

3.times do |n|
  n += 1
  user = User.find_or_create_by!(email: "user00#{n}@test.com") do |u|
    u.password = "test1234"
  end

  50.times do |i|
    i += 1
    user.articles.find_or_create_by!(title: "No.#{i}: user00#{n}の記事") do |article|
      article.content = "No.#{i}: user00#{n}の記事の本文"
    end
  end
end
