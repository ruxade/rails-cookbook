class Bookmark < ApplicationRecord
  belongs_to :recipe
  belongs_to :category

  validates :recipe, presence: true
  validates :category, presence: true
  validates :comment, presence: true, length: { minimum: 6 }
  # validates_uniqueness_of :recipe_id, scope: :category_id
  validates :category_id, uniqueness: { scope: :recipe_id }
end
