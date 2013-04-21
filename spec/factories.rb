# By using the symbol ':user' we get Factory Girl to simulate the User model
FactoryGirl.define do
  factory :user do |user|
    user.name                  "example.user"
    user.email                 "user@example.com"
    user.fullname              "Example User"
    user.password              "1Verylongpassword"
    user.password_confirmation "1Verylongpassword"
  end

  factory :type do |type|
    type.name "Foo bar"
    type.description "Foo bar zoo"
    # type.association :article
  end

  factory :article do |article|
    article.title "Lorem Ipsum"
    article.content "Lorem Ipsum Foo Bar"
    # article.association :created_by, :user
  end
end

FactoryGirl.sequences do
  sequence :email do |n|
    "user-#{n}@example.org"
  end
end
