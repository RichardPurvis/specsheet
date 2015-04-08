class AddColumnsToSheets < ActiveRecord::Migration
  def change
    add_column :sheets, :column_title, :string
    add_column :sheets, :column_data_type, :string
    add_column :sheets, :column, :string
  end
end
