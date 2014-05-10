# == Schema Information
#
# Table name: students
#
#  id         :integer          not null, primary key
#  first_name :string(255)
#  last_name  :string(255)
#  email      :string(255)
#  cohort     :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Student < ActiveRecord::Base
  validates :first_name, :last_name, :email, :presence => true
  validates :email, :uniqueness => true
  
  has_many :reports
  belongs_to :cohort
  
  def to_s
    "#{first_name} #{last_name}..."
  end
end
