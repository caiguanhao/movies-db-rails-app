class AddPricesToTimetables < ActiveRecord::Migration
  def change
    add_column :timetables, :prices, :string, default: '{}', null: false
  end
end
