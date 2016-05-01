class CreateCinemas < ActiveRecord::Migration
  def change
    create_table :cinemas do |t|
      t.string :name
      t.string :city
      t.string :content

      t.timestamps null: false
    end
  end
end
