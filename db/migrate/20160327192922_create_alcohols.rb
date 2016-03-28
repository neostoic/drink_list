class CreateAlcohols < ActiveRecord::Migration
  def change
    create_table :alcohols do |t|
      t.string :name
      t.timestamp
    end
  end
end
