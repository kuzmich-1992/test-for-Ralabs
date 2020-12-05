class AddPasswordToMessages < ActiveRecord::Migration[5.2]
  def change
  	add_column :messages, :password, :string
  end
end
