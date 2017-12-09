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

  accepts_nested_attributes_for :goals

  before_save :update_step

  def update_step
    if self.approved == true
      self.user.update_step
    end
  end

  def validate_weight
    $flag = true
    Perspective.all.each do |p|
      if self.goals.where(perspective_id: p.id).get_total_weight != 100
        $flag = false
      end
    end
    $flag
  end

end
