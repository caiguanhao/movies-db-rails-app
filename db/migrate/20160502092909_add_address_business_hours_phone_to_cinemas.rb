class AddAddressBusinessHoursPhoneToCinemas < ActiveRecord::Migration
  def change
    add_column :cinemas, :address, :string
    add_column :cinemas, :business_hours, :string
    add_column :cinemas, :phone, :string
  end
end
