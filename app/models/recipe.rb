class Recipe < ActiveRecord::Base
  has_many :drinks

  validates :recipe, presence: true
end