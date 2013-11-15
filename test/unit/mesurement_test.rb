# == Schema Information
#
# Table name: mesurements
#
#  id         :integer          not null, primary key
#  unit       :string(255)
#  amount     :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class MesurementTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
