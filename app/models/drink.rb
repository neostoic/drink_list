class Drink < ActiveRecord::Base
  belongs_to :place
  belongs_to :recipe
  belongs_to :alcohol

  validates :place_id,   presence: true
  validates :price,      presence: true

  searchkick text_start: [:recipe_name], suggest: [:recipe_name]

  def search_data
    attributes.merge(recipe_name: self.recipe.name,
                     alcohol_name: self.alcohol.name,
                     place_name: self.place.name,
                     price: self.price)
  end
end
