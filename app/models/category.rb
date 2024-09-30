class Category < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :recipes, through: :bookmarks

  validates :description, presence: true, uniqueness: true
end
