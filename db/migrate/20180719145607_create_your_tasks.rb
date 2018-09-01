class CreateYourTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :your_tasks do |t|
      t.string :name
      t.string :status

      t.timestamps
    end
  end
end
