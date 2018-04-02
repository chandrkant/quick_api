class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments , id: :uuid do |t|
      t.text :content
      t.references :commentable, polymorphic: true, index: true

      t.timestamps
    end
  end
end
