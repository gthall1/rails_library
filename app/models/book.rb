class Book < ActiveRecord::Base
  has_many :reviews

  validates :title, presence: true
  validates :author, presence: true
  validates :year, presence: true
end
