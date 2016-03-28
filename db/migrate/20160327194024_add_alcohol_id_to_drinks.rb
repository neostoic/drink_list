class AddAlcoholIdToDrinks < ActiveRecord::Migration
  def change
    add_column :drinks, :alcohol_id, :integer
  end
end
