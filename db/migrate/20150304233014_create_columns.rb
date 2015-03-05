class CreateColumns < ActiveRecord::Migration
  def change
    create_table :columns do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
