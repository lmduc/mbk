class AddImageUrlToBooks < ActiveRecord::Migration
  def change
    add_column :books, :image_url, :text
  end
end
