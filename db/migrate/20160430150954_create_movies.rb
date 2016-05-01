class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :name
      t.string :alias
      t.integer :year
      t.string :content

      t.timestamps null: false
    end
  end
end
