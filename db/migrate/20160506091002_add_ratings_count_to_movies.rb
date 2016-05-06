class AddRatingsCountToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :ratings, :decimal, precision: 3, scale: 2, default: 0
    add_column :movies, :ratings_count, :integer, default: 0
  end
end
