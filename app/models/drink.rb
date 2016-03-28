class Drink < ActiveRecord::Base
  belongs_to :place
  belongs_to :recipe
  belongs_to :alcohol
end