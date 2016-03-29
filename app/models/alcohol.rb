class Alcohol < ActiveRecord::Base
  has_many :drinks, dependent: :destroy

  validates :name, presence: true
end