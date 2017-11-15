# == Schema Information
#
# Table name: charges
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Charge < ApplicationRecord

  has_many    :users
  
end
