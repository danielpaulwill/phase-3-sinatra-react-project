class CreateTasksTable < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.integer :category_id
      t.string :description
    end
  end
end
