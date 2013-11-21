# == Schema Information
#
# Table name: recipes
#
#  id           :integer          not null, primary key
#  title        :string(255)
#  duration     :integer
#  instructions :text
#  image        :text
#  comment      :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  serving_size :integer
#

class Recipe < ActiveRecord::Base
  attr_accessible :amount, :duration, :image, :instructions, :title, :comment, :cookbook_id, :serving_size

  mount_uploader :image, ImageUploader

  has_and_belongs_to_many :cookbooks
  has_many :recipe_ingredients
  has_many :ingredients, :through => :recipe_ingredients
end
