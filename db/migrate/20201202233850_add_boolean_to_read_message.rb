# frozen_string_literal: true

class AddBooleanToReadMessage < ActiveRecord::Migration[5.2]
  def change
    add_column :messages, :readed, :boolean, default: false
  end
end
