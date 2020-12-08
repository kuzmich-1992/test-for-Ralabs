# frozen_string_literal: true

class DeleteDescriptionMessage < ActiveRecord::Migration[5.2]
  def up
    remove_column :messages, :description
  end
end
