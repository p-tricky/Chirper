FactoryGirl.define do
  factory :user do
    name     "Patrick Loftus"
    email    "phloftus@gmail.com"
    password "swordfish"
    password_confirmation "swordfish"
  end
end
