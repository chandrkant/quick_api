class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks , id: :uuid do |t|
      t.string :name
      t.text :desc
      t.boolean :status
      t.references :user

      t.timestamps
    end
  end
end
