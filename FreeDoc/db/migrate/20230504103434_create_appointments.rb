class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.datetime :date
      t.references :doctor, foreign_key: true, index: true
      t.references :patient, foreign_key: true, index: true
      # add_reference :appointments, :doctor, foreign_key: true
      # add_reference :appointments, :patient, foreign_key: true
      t.timestamps
    end
  end
end
