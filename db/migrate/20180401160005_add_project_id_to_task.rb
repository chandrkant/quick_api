class AddProjectIdToTask < ActiveRecord::Migration[5.0]
  def change
    add_column :tasks, :project_id, :uuid,index: true
  end
end
