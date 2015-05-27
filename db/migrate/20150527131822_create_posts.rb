class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :book_id
      t.text :title
      t.text :body

      t.timestamps null: false
    end
    add_index :posts, :book_id
  end
end
