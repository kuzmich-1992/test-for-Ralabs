class Delete < ActiveRecord::Migration[5.2]
  def change
  	remove_column :messages, :transit_message
  end
end
