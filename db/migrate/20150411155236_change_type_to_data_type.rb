class ChangeTypeToDataType < ActiveRecord::Migration
  def change
    rename_column :columns, :type, :data_type
  end
end
