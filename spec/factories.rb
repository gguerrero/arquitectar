# By using the symbol ':user' we get Factory Girl to simulate the User model
FactoryGirl.define do
  factory :user do |user|
    user.name                  "example.user"
    user.email                 "user@example.com"
    user.fullname              "Example User"
    user.password              "1Verylongpassword"
    user.password_confirmation "1Verylongpassword"
  end
end

FactoryGirl.sequences do
  sequence :email do |n|
    "user-#{n}@example.org"
  end
end

# FactoryGirl.define :news do |news|
#   news.title "Foo bar"
#   news.content "Foo bar zoo"
#   news.association :user
# end
