# == Schema Information
#
# Table name: ingredients
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Ingredient < ActiveRecord::Base
  attr_accessible :name, :recipe_id, :measurement_id

  has_and_belongs_to_many :recipes
  has_and_belongs_to_many :measurements
end
