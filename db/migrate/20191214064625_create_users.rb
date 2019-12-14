class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password
      t.string :user_name
      t.string :sender_tel
      t.text :sender_address
      t.datetime :available_time
      t.boolean :sender, default: false

      t.timestamps
    end
  end
end
