class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      add_index :posts, :created_at
      
      t.timestamps null: false
    end
  end
end
