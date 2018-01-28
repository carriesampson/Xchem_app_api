class CreateAdditives < ActiveRecord::Migration[5.2]
  def change
    create_table :additives do |t|
      t.string :CSF

      t.timestamps
    end
  end
end
