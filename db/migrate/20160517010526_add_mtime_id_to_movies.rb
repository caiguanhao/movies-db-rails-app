class AddMtimeIdToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :mtime_id, :integer
  end
end
