# create users for testing

5.times do
  User.create!(
    email: Faker::Internet.email,
    password: "secrete",
    password_confirmation: "secrete",  
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    confirmed_at: DateTime.now
  )
end

7.times do
  Article.create!(
    title: Faker::Movie.title,
    user: User.all.sample
  )
end