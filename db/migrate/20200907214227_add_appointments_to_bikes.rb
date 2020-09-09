class AddAppointmentsToBikes < ActiveRecord::Migration[6.0]
  def change
    add_reference :appointments, :bike, foreign_key: true
  end
end
