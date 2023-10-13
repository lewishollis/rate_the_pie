class CreateRatings < ActiveRecord::Migration[7.0]
  def change
    create_table :ratings do |t|
      t.references :user, foreign_key: true
      t.references :cake, foreign_key: true
      t.integer :price_rating
      t.integer :taste_rating
      t.float :overall_rating
      t.text :comment
      t.timestamps
    end
  end
end
