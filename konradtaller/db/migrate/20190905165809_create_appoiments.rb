class CreateAppoiments < ActiveRecord::Migration[6.0]
  def change
    create_table :appoiments do |t|
      t.references :consulting_room, null: false, foreign_key: true
      t.references :patient, null: false, foreign_key: true
      t.references :doctor, null: false, foreign_key: true
      t.datetime :begindate
      t.datetime :enddate
      t.string :comment

      t.timestamps
    end
  end
end
