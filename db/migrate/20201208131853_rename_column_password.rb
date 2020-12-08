class RenameColumnPassword < ActiveRecord::Migration[5.2]
  def change
  	rename_column :messages, :password, :text
  end
end
