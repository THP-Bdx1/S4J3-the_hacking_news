# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

6.times do # génère aléatoirement 6 users
  user = User.create!(name: Faker::Superhero.name)
end

20.times do # génère aléatoirement 20 posts et les attribue à des users
  post = Post.create!(user_id: Random.new.rand(1..User.count), title: Faker::HowIMetYourMother.quote)
end

15.times do # génère aléatoirement 15 commentaires, les attribue à des users et des posts
  comment = Comment.create!(post_id: Random.new.rand(1..Post.count), user_id: Random.new.rand(1..User.count), content: Faker::Lovecraft.sentence, rank: 1)
end

15.times do # génère aléatoirement 15 réponses aux commentaires, les attribue à des users et des commentaires
  answer = Answer.create!(comment_id: Random.new.rand(1..Comment.count), user_id: Random.new.rand(1..User.count), content: Faker::Lovecraft.sentence, rank: 2)
end
