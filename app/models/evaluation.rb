# == Schema Information
#
# Table name: evaluations
#
#  id         :integer          not null, primary key
#  comment    :string
#  approved   :boolean
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Evaluation < ApplicationRecord

  belongs_to  :user
  has_many    :goals

end
