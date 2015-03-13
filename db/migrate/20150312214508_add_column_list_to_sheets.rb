class AddColumnListToSheets < ActiveRecord::Migration
  def change
    add_column :sheets, :column_list, :text
  end
end
