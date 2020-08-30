class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.string :model
      t.string :city
      t.date :date

      t.timestamps
    end
  end
end
