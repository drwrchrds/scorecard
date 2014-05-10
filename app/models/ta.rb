# == Schema Information
#
# Table name: ta
#
#  id         :integer          not null, primary key
#  current    :boolean
#  first_name :string(255)
#  last_name  :string(255)
#  email      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Ta < ActiveRecord::Base
  validates :first_name, :last_name, :email, :presence => true
  has_many :reports
end
