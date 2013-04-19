namespace :db do
  desc "Fill database with sample data"
  task :populate => :environment do
    require 'faker'
    # Rake::Task['db:reset'].invoke

    102.times do |n|
      name     = Faker::Name.name
      username = Faker::Internet.user_name(name)[0..14]
      email    = "example-#{n+1}@railstutorial.org"
      password = "1Verylongpassword"
      User.create!(name: username,
                   email: email,
                   fullname: name,
                   password: password,
                   password_confirmation: password)
    end
  end
end