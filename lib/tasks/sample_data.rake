namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(name: "Boss man",
                 email: "Boss@hardknocks.edu",
                 password: "bigdick",
                 password_confirmation: "bigdick",
                 admin: true)
    User.create!(name: "Zach Dodds",
                 email: "dodds@harveymudd.edu",
                 password: "ilovespam",
                 password_confirmation: "ilovespam")
    20.times do |n|
      name = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      password = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
    users = User.all(limit: 6)
    10.times do
      content = Faker::Lorem.sentence(5)
      users.each { |user| user.microposts.create!(content: content) }
    end
  end
end
