class AddLogoToCinemas < ActiveRecord::Migration
  def change
    add_column :cinemas, :logo, :string
  end
end
