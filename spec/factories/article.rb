FactoryBot.define do
  factory :article, class: 'Article' do
    title { FFaker::Book.title }
    content { FFaker::Lorem.paragraph }
  end
end
