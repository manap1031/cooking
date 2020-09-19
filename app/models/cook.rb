class Cook < ApplicationRecord
  has_one_attached :image

  validates :recipe_name, presence: true
  validates :recipe,      presence: true
  validates :image,       presence: true
end
