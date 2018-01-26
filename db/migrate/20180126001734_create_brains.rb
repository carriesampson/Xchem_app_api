class CreateBrains < ActiveRecord::Migration[5.2]
  def change
    create_table :brains do |t|
      t.string :ProductName
      t.string :CSF
      t.string :CompanyName
      t.string :BrandName
      t.string :PrimaryCategory
      t.string :SubCategory
      t.string :ChemicalName

      t.timestamps
    end
  end
end
