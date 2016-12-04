class AddComToBuz < ActiveRecord::Migration[5.0]
  def change
    add_column :buzs, :com, :string
    add_column :buzs, :fim, :string
    add_column :buzs, :range, :text, array: true
  end
end
