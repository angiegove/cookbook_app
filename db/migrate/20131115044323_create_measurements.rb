class CreateMeasurements < ActiveRecord::Migration
  def change
    create_table :measurements do |t|
      t.string :unit
      t.float :amount

      t.timestamps
    end
  end
end
