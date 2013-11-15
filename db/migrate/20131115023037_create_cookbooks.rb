class CreateCookbooks < ActiveRecord::Migration
  def change
    create_table :cookbooks do |t|
      t.string :title
      t.string :description
      t.string :image
      t.integer :user_id

      t.timestamps
    end
  end
end
