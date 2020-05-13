class Restaurant < ApplicationRecord
  CATEGORY = ['chinese', 'italian', 'japanese', 'french', 'belgian']

  validates :name, :address, :category, presence: true

  validates :category, inclusion: { in: CATEGORY,
    message: "%{value} is not a valid category" }

  has_many :reviews, dependent: :destroy
end
