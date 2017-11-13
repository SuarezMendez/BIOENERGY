# == Schema Information
#
# Table name: users
#
#  id             :integer          not null, primary key
#  name           :string
#  email          :string
#  document       :integer
#  step           :integer
#  boss           :integer
#  departament_id :integer
#  role_id        :integer
#  charge_id      :integer
#  area_id        :integer
#  password_hash  :string
#  password_salt  :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
