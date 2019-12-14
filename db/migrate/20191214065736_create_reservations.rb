class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.string :reservation_status
      t.datetime :reservation_datetime
      t.string :reservation_animals_id
      t.text :reservation_note
      t.date :reservation_success_time

      t.timestamps
    end
  end
end
