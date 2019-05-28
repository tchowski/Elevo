# frozen_string_literal: true

class TableUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :team_name
      t.string :full_name
      t.integer :manager_id
    end
    add_foreign_key :users, :users, column: :manager_id, primary_key: 'id'
  end
end
