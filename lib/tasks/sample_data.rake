namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(username: "exampleuser",
                         email: "example@railstutorial.org",
                         password: "foobar12",
                         password_confirmation: "foobar12",
                         admin: true)
    99.times do |n|
      username  = Faker::Name.first_name
      email = "example-#{n+1}@railstutorial.org"
      password  = "password"
      User.create!(username: username,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end
end