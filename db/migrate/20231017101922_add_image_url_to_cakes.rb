class AddImageUrlToCakes < ActiveRecord::Migration[7.0]
  def change
    add_column :cakes, :image_url, :string
  end
end
