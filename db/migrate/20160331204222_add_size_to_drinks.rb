class AddSizeToDrinks < ActiveRecord::Migration
  def change
    add_column :drinks, :size, :string
  end
end
