class Search < ApplicationRecord
  belongs_to :user

  validates :quantity, presence: true, numericality: { only_integer: true }
  validates :content, presence: true

  def increment_quantity
    increment(:quantity)
    save
  end
end
