class CreateMesurements < ActiveRecord::Migration
  def change
    create_table :mesurements do |t|
      t.string :unit
      t.float :amount

      t.timestamps
    end
  end
end
