FactoryGirl.define do
  factory :user do
    username 'MyString'
    password 'MyString'
    created_at Time.zone.now
  end
end
