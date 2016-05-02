class AddRoomToTimetables < ActiveRecord::Migration
  def change
    add_column :timetables, :room, :string
  end
end
