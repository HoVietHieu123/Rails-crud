class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :full_name
      t.string :email, index: true
      t.string :address, index: true
      t.string :phone
      t.date :birthday
      t.string :avatar
      t.integer :gender

      t.timestamps
    end
  end
end
