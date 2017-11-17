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
  has_many    :goals, dependent:  :destroy

  before_save :change_step

  accepts_nested_attributes_for :goals

  def change_step
    if self.approved == true
      self.user.update(step: 4)
    else
      self.user.update(step: 3)
    end
  end

end
