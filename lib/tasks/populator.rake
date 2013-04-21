namespace :db do
  desc "Fill database with sample data"
  task :populate => :environment do
    require 'faker'
    # Rake::Task['db:reset'].invoke

    # 102.times do |n|
    #   name     = Faker::Name.name
    #   username = Faker::Internet.user_name(name)[0..14]
    #   email    = "example-#{n+1}@railstutorial.org"
    #   password = "1Verylongpassword"
    #   User.create!(name: username,
    #                email: email,
    #                fullname: name,
    #                password: password,
    #                password_confirmation: password)
    # end

    Type.find_each do |type|
      23.times do |n|
        title         = Faker::Lorem.sentence(10)
        content       = Faker::Lorem.paragraphs(15).join("\n")
        created_by_id = User.first.id
        updated_by_id = User.first.id

        Article.create!(title: title,
                        type_id: type.id,
                        content: content,
                        created_by_id: created_by_id,
                        updated_by_id: updated_by_id)
      end
    end
  end
end