class CreateTodoGroups < ActiveRecord::Migration
  def change
    create_table :todo_groups do |t|
      t.belongs_to :owner, class: 'User'
      t.string :data

      t.timestamps null: false
    end
  end
end
