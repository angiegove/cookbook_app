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
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Recipe < ActiveRecord::Base
  attr_accessible :amount, :duration, :image, :ingredient, :instructions, :title, :unit
end
