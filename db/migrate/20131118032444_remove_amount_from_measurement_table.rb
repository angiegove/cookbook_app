class RemoveAmountFromMeasurementTable < ActiveRecord::Migration
  def change
    remove_column :measurements, :amount
  end
end
