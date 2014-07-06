FactoryGirl.define do
  factory :user do
    username "mhartl"
    first_name "Michael"
    last_name "Hartl"
    email    "michael@example.com"
    password "foobar12"
    password_confirmation "foobar12"
  end
end