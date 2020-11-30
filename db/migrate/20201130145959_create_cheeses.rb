class CreateCheeses < ActiveRecord::Migration[6.0]
  def change
    create_table :cheeses do |t|
      t.string :name
      t.integer :price
      t.text :description

      t.timestamps
    end
  end
end