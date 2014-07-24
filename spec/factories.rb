FactoryGirl.define do
  factory :user do
    username "mjordan"
    name     "Michael Jordan"
    email    "michael@example.com"
    password "foobar"
    password_confirmation "foobar"
  end
end