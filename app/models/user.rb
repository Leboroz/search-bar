class User < ApplicationRecord
  validates :ip, presence: true
end
