class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :created_by
      t.boolean :status
      t.references :user

      t.timestamps
    end
  end
end
