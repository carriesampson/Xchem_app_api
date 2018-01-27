class CreateChemicals < ActiveRecord::Migration[5.2]
  def change
    create_table :chemicals do |t|
      t.string :ChemicalName

      t.timestamps
    end
  end
end
