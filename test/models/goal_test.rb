# == Schema Information
#
# Table name: goals
#
#  id                :integer          not null, primary key
#  perspective       :string
#  description       :string
#  generalIndicator  :string
#  specificIndicator :string
#  formula           :string
#  weight            :integer
#  measure           :integer
#  num_periods       :integer
#  g_type            :integer
#  user_id           :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

require 'test_helper'

class GoalTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
