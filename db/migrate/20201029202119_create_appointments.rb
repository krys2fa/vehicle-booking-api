class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.date :date
      t.string :city
      t.string :vehicle
      t.string :model
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
