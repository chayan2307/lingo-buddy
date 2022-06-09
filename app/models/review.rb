class Review < ApplicationRecord
  belongs_to :user
  validates :content, length: {minimum: 10}
  validates :rating, numericality: { less_than_or_equal_to: 5, only_integer: true }

end
