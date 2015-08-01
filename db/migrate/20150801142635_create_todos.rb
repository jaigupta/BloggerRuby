class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.belongs_to :owner, class: 'User', foreign_key: 'owner_id'
      t.belongs_to :assignee, class: 'User', foreign_key: 'assignee_id'
      t.belongs_to :todo_group
      t.string :data

      t.timestamps null: false
    end
  end
end
