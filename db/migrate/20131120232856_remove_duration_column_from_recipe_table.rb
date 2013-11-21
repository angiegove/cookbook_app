class RemoveDurationColumnFromRecipeTable < ActiveRecord::Migration
  def change
    remove_column :recipes, :duration
  end
end
