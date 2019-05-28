# frozen_string_literal: true

class TableManagers < ActiveRecord::Migration[5.2]
  def change
    create_table :managers do |t|
      t.string :full_name
      t.string :team_name
      t.integer :manager_id

      t.timestamps
    end
  end
end
