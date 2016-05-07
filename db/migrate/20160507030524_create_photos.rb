class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.references :movie, index: true, foreign_key: true
      t.string :title
      t.string :photo_type
      t.string :url
      t.string :url_type

      t.timestamps null: false
    end
  end
end
