class AddDistrictToCinemas < ActiveRecord::Migration
  def change
    add_column :cinemas, :district, :string
  end
end
