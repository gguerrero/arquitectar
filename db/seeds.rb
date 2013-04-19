# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = [ { name: "crouk", email: "g.guerrero.bus@gmail.com",
            fullname: "Guillermo Guerrero Bustamante",
            password: "8iOdad=Kd)dsA0", password_confirmation: "8iOdad=Kd)dsA0",
            admin: true },
          { name: "txarrote", email: "txarrote@gmail.com",
            fullname: "Arantxa Guijarro Bustamante",
            password: "9iSa&wDkp12[ad", password_confirmation: "9iSa&wDkp12[ad",
            admin: true } ]

User.create(users)