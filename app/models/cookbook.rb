# == Schema Information
#
# Table name: cookbooks
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  description :string(255)
#  image       :string(255)
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Cookbook < ActiveRecord::Base
  attr_accessible :description, :image, :title, :user_id, :recipe_id

  mount_uploader :image, ImageUploader

  belongs_to :user
  has_and_belongs_to_many :recipes
end
