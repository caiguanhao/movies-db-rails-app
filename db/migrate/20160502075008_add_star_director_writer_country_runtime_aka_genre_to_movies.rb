class AddStarDirectorWriterCountryRuntimeAkaGenreToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :star, :string
    add_column :movies, :director, :string
    add_column :movies, :writer, :string
    add_column :movies, :country, :string
    add_column :movies, :runtime, :integer
    add_column :movies, :aka, :string
    add_column :movies, :genre, :string
  end
end
