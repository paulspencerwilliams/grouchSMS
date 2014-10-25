FactoryGirl.define do
  factory :user do
    email 'example@example.com'
    password 'changeme'
    password_confirmation 'changeme'
    phone '07958112092'
    weather true
    # required if the Devise Confirmable module is used
    # confirmed_at Time.now
  end
end
