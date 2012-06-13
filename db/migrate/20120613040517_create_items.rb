class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :group
      t.text :details
      t.date :date

      t.timestamps
    end
  end
end
