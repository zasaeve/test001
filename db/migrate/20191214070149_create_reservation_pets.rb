class CreateReservationPets < ActiveRecord::Migration[6.0]
  def change
    create_table :reservation_pets do |t|
      t.string :adopted_animal
      t.belongs_to :reservation, null: false, foreign_key: true
      t.belongs_to :animal, null: false, foreign_key: true

      t.timestamps
    end
  end
end
