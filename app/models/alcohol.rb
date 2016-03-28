class Alcohol < ActiveRecord::Base
  has_many :drinks

  validates :name, presence: true
end