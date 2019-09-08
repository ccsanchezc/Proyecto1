class CreatePatients < ActiveRecord::Migration[6.0]
  def change
    create_table :patients do |t|
      t.integer :document
      t.string :name
      t.string :lastname
      t.date :birthdate

      t.timestamps
    end
  end
end
