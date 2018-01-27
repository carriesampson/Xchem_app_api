class AddForeignKeyToChemicals < ActiveRecord::Migration[5.2]
  def change
    add_column :chemicals, :product_id, :integer
  end
end
