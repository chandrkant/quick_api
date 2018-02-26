class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :created_by
      t.boolean :status
      t.references :user

      t.timestamps
    end
  end
end
