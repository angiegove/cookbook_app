# == Schema Information
#
# Table name: measurements
#
#  id         :integer          not null, primary key
#  unit       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Measurement < ActiveRecord::Base
  attr_accessible :unit

  has_many :recipe_ingredients

  def as_json(options={})
    {:value => self.unit, :data => self.id}
  end
end
