class AddForeignKeyToChemicals < ActiveRecord::Migration[5.2]
  def change
    add_column :chemicals, :brand_id, :integer
  end
end
