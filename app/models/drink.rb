class Drink < ActiveRecord::Base
  belongs_to :place
  belongs_to :recipe
  belongs_to :alcohol

  validates :place_id,   presence: true
  validates :recipe_id,  presence: true
  validates :alcohol_id, presence: true
  validates :price,      presence: true

  scope :recipe,  -> (recipe)  { where recipe:  recipe }
  scope :alcohol, -> (alcohol) { where alcohol: alcohol }
end
