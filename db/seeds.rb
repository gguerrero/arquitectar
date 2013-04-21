# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

types = [{ name: "news",
           description: "Latest news about Arquitectar and it's environment." },
         { name: "project",
           description: "Project details."}]
Type.create!(types)