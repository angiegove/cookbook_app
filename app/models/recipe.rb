# == Schema Information
#
# Table name: recipes
#
#  id           :integer          not null, primary key
#  title        :string(255)
#  duration     :integer
#  amount       :string(255)
#  unit         :string(255)
#  ingredient   :string(255)
#  instructions :text
#  image        :text
#  comment      :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  serving_size :integer
#

class Recipe < ActiveRecord::Base
  attr_accessible :amount, :duration, :image, :ingredient, :instructions, :title, :unit, :comment, :cookbook_id, :ingredient_id

  has_and_belongs_to_many :cookbooks
  has_and_belongs_to_many :ingredients
end
