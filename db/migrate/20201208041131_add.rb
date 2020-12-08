class Add < ActiveRecord::Migration[5.2]
  def change
  	add_column :messages, :transit_message, :string
  end
end
