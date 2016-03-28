class AddDatetimeToAlcohols < ActiveRecord::Migration
  def change
    add_column :alcohols, :created_at, :datetime
    add_column :alcohols, :updated_at, :datetime
  end
end
