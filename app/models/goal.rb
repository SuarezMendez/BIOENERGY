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

class Goal < ApplicationRecord

  belongs_to  :evaluation
  has_many    :periods, dependent:  :destroy

  accepts_nested_attributes_for :periods

  validates_presence_of :description, :indicator, :formula, :weight, :num_periods,
    :perspective_id, :measure_id

  def get_period
    self.periods[(((Time.now.month-1) * self.num_periods) / 12 )]
  end

  def self.get_goals_from_user(user)
    Goal.where(user_id: user.id)
  end

  def self.get_total_weight
    self.sum(:weight)
  end

end
