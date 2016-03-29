class Recipe < ActiveRecord::Base
  has_many :drinks, dependent: :destroy

  validates :name,  presence: true
  validates :image, presence: true
end