class AddFieldsToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :website, :string
    add_column :users, :bio, :text
  end
end
