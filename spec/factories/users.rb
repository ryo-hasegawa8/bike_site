FactoryBot.define do
  factory :user do
    username "Tom Paker"
    sequence(:email) { |n| "hogehgoe#{n}@hogehoge.com" }
    password "hogehoge"
    association :event
  end
end
