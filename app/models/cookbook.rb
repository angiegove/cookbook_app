# == Schema Information
#
# Table name: cookbooks
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  description :string(255)
#  image       :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Cookbook < ActiveRecord::Base
  attr_accessible :description, :image, :title
end
