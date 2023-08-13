FactoryBot.define do
  factory :admin do
    sequence(:email) { |n| "hoge_#{n}@example.com" }
    password { 'hogehoge' }
    password_confirmation { 'hogehoge' }
  end
end
