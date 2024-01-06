FactoryBot.define do
  factory :user, class: 'User' do
    ip { FFaker::Internet.ip_v4_address }
  end
end
