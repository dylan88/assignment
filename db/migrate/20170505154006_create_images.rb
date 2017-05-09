class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :filename
      t.string :alt
      t.string :caption
      t.string :name
      t.timestamps null: false
    end
  end
end
