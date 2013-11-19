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

require 'test_helper'

class RecipeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
