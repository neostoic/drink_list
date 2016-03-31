class Place < ActiveRecord::Base
  has_many :drinks, dependent: :destroy

  validates :name, presence: true
  validates :address_link, presence: true
end