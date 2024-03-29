class Review < ActiveRecord::Base
  belongs_to :book

  validates :book_id, presence: true
  validates :rating, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }
  validates :body, presence: true

end
