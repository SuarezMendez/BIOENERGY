# == Schema Information
#
# Table name: goals
#
#  id             :integer          not null, primary key
#  description    :string
#  indicator      :integer
#  formula        :string
#  weight         :integer
#  num_periods    :integer
#  evaluation_id  :integer
#  perspective_id :integer
#  measure_id     :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'test_helper'

class GoalTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
