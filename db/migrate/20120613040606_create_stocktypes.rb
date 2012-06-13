class CreateStocktypes < ActiveRecord::Migration
  def change
    create_table :stocktypes do |t|
      t.string :name
      t.string :group
      t.text :details

      t.timestamps
    end
  end
end
