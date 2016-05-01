class CreateTimetables < ActiveRecord::Migration
  def change
    create_table :timetables do |t|
      t.references :movie, index: true, foreign_key: true
      t.references :cinema, index: true, foreign_key: true
      t.date :date
      t.time :time

      t.timestamps null: false
    end
  end
end
