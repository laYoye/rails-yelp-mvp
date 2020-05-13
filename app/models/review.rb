class Review < ApplicationRecord
  NOTES = [0, 1, 2, 3, 4, 5]
  belongs_to :restaurant
  validates :content, :rating, :restaurant, presence: true
  validates :rating, inclusion: { in: NOTES,
    message: "%{value} is not a valid grade" }, numericality: { only_integer: true }
end
