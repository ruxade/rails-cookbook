class Recipe < ApplicationRecord
  has_many :bookmarks
  has_many :categories, through: :bookmarks

  validates :description, presence: true, uniqueness: true
  # validates :name, presence: true
  validates :rating, numericality: { in: 0..10 }
end
