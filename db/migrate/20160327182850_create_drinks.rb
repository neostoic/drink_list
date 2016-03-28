class CreateDrinks < ActiveRecord::Migration
  def change
    create_table :drinks do |t|
      t.string  :name
      t.integer :alcohol
      t.decimal :price
      t.timestamp
    end
  end
end
