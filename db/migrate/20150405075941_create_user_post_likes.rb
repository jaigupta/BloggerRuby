class CreateUserPostLikes < ActiveRecord::Migration
  def change
    create_table :user_post_likes do |t|
      t.belongs_to :user
      t.belongs_to :post

      t.timestamps null: false
    end
    add_index :user_post_likes, ['user_id', 'post_id'], unique: true
  end
end
