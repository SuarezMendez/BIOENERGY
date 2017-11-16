# == Schema Information
#
# Table name: perspectives
#
#  id         :integer          not null, primary key
#  name       :string           0->Area 1->Personal 2->Coorporativo
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Perspective < ApplicationRecord
end
