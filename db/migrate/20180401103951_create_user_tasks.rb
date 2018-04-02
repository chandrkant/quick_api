class CreateUserTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :user_tasks, id: false do |t|
      t.uuid :user_id,foreign_key: true,index: true
      t.uuid :task_id,foreign_key: true,index: true

      t.timestamps
    end
  end
end
