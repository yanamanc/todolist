class CreateYourTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :your_tasks do |t|
      t.integer :task_id
      t.string :name
      t.string :status
      t.references :project_id

      t.timestamps
    end
  end
end
