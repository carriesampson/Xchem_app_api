class CreateAdditives < ActiveRecord::Migration[5.2]
  def change
    create_table :additives do |t|
      t.string :CSFName

      t.timestamps
    end
  end
end
