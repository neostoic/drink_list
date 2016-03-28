class Place < ActiveRecord::Base
  has_many :drinks

  validates :place, presence: true
end