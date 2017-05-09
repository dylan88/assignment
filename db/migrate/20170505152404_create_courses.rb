class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.string :instructor
      t.string :description
      t.date :start_date
      t.time :hour
      t.integer :day

      t.timestamps null: false
    end
  end
end
