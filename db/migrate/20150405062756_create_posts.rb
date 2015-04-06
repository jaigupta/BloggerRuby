class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :details
      t.string :author
      t.string :author_details
      t.integer :likes_count, :default => 0
      t.belongs_to :user

      t.timestamps null: false
    end
  end
end
