class CreateAnimals < ActiveRecord::Migration[6.0]
  def change
    create_table :animals do |t|
      t.string :animal_subid
      t.decimal :animal_area_pkid
      t.string :animal_kind
      t.string :animal_sex
      t.string :animal_age
      t.string :animal_sterilization
      t.string :animal_foundplace
      t.string :album_file
      t.boolean :on_sell, default: false
      t.string :animal_status

      t.timestamps
    end
  end
end
