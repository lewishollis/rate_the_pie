class CreateCakes < ActiveRecord::Migration[7.0]
  def change
    create_table :cakes do |t|
      t.string :name, null: false
      t.text :description
      t.string :image
      t.decimal :price, precision: 8, scale: 2, null: false
      t.string :taste
      t.float :overall_rating
      t.timestamps
    end
  end
end
