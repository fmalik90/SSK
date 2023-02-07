class CreateFlights < ActiveRecord::Migration[7.0]
  def change
    create_table :flights do |t|
      t.string :destination
      t.string :description
      t.date :date
      t.time :time
      t.integer :duration
      t.integer :price

      t.timestamps
    end
  end
end
