FactoryGirl.define do
  factory :link, class: Spree::SocialLink do
    url { Faker::Internet.http_url }
    label { Faker::Name.name }
    icon 'twitter'
  end
end
