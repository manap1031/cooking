class Cook < ApplicationRecord
  has_one_attached :image
  belongs_to :user

  validates :recipe_name, presence: true, length: { maximum: 15 }
  validates :recipe,      presence: true, length: { maximum: 3000 }
  validates :image,       presence: true

  def self.search(search)
    if search != ''
      Cook.where('recipe LIKE(?) OR recipe_name LIKE(?)', "%#{search}%", "%#{search}%")
    else
      Cook.all
    end
  end
end
