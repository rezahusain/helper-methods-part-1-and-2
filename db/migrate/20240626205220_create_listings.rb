class CreateListings < ActiveRecord::Migration[7.0]
  def change
    create_table :listings do |t|
      t.string :title
      t.integer :price
      t.text :description
      t.string :location

      t.timestamps
    end
  end
end
