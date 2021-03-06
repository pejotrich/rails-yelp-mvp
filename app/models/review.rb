class Review < ApplicationRecord
  belongs_to :restaurant
  validates :restaurant, presence: true
  validates :content, presence: true
  validates :rating, numericality: true, presence: true, :inclusion => { in: 0..5 }
end
