class Search < ApplicationRecord
  belongs_to :user

  def increment_quantity
    increment(:quantity)
    save
  end
end
