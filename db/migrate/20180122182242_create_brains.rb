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
      t.string :CasId
      t.string :CasNumber
      t.string :ChemicalId
      t.string :ChemicalName
      t.string :InitialDateReported
      t.string :MostRecentDateReported
      t.string :DiscontinuedDate
      t.string :ChemicalCreatedAt
      t.string :ChemicalUpdatedAt
      t.string :ChemicalDateRemoved
      t.string :ChemicalCount

      t.timestamps
    end
  end
end
