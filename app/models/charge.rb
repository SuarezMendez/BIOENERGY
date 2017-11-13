# == Schema Information
#
# Table name: charges
#
#  id         :integer          not null, primary key
#  name       :string
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Charge < ApplicationRecord

  has_many    :users
  
end
