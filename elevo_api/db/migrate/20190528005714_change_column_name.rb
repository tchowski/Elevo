class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :part_number, :full_name
  end
end
