class AddGenderAstroCityIntroToUsers < ActiveRecord::Migration
  def change
    add_column :users, :gender, :string
    add_column :users, :astro, :string
    add_column :users, :city, :string
    add_column :users, :intro, :string
  end
end
