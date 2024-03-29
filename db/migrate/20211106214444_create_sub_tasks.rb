class CreateSubTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :sub_tasks do |t|
      t.references :task, null: false, foreign_key: true
      t.string :name
      t.boolean :completed

      t.timestamps
    end
  end
end
