class AddUserToAppointments < ActiveRecord::Migration[6.0]
  def change
    add_column :appointments, :user, :string
  end
end
