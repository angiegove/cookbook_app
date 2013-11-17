# == Schema Information
#
# Table name: measurements
#
#  id         :integer          not null, primary key
#  unit       :string(255)
#  amount     :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Measurement < ActiveRecord::Base
  attr_accessible :amount, :unit, :ingredient_id

  has_and_belongs_to_many :ingredients
end
