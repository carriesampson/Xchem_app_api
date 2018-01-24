class CreateBrains < ActiveRecord::Migration[5.2]
  def change
    create_table :brains do |t|
      t.string :CDPHId
      t.string :ProductName
      t.string :CSFId
      t.string :CSF
      t.string :CompanyId
      t.string :CompanyName
      t.string :BrandName
      t.string :PrimaryCategoryId
      t.string :PrimaryCategory
      t.string :SubCategoryId
      t.string :SubCategory
      t.string :ChemicalId
      t.string :ChemicalName

      t.timestamps
    end
  end
end
