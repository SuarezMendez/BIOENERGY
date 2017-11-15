# == Schema Information
#
# Table name: periods
#
#  id         :integer          not null, primary key
#  number     :integer
#  expiration :date
#  proposed   :integer
#  reached    :integer
#  compromise :string
#  commentary :string
#  goal_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Period < ApplicationRecord

  belongs_to  :goal

end
