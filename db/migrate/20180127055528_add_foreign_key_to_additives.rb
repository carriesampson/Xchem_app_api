class AddForeignKeyToAdditives < ActiveRecord::Migration[5.2]
  def change
    add_column :additives, :product_id, :integer
  end
end
