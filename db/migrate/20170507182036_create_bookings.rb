class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.string :course
      t.integer :day
      t.string :name
      t.string :email
      t.string :phone
      t.string :membership

      t.timestamps null: false
    end
  end
end
