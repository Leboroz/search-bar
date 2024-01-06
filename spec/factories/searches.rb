FactoryBot.define do
  factory :search, class: 'Search' do
    content { FFaker::Lorem.paragraph }
    quantity { FFaker::Random.rand(1..100) }
    user { association :user }
  end
end
