class CreateDoctors < ActiveRecord::Migration[6.0]
  def change
    create_table :doctors do |t|
      t.integer :document
      t.string :name
      t.string :lastname
      t.integer :phone
      t.references :profession, null: false, foreign_key: true

      t.timestamps
    end
  end
end
