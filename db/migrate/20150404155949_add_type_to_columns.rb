class AddTypeToColumns < ActiveRecord::Migration
  def change
    add_column :columns, :type, :string
    add_column :columns, :sheet_id, :integer
    add_index :columns, :sheet_id
  end
end
