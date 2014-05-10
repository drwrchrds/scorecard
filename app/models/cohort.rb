# == Schema Information
#
# Table name: cohorts
#
#  id         :integer          not null, primary key
#  start      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Cohort < ActiveRecord::Base
  has_many :students
  
  validates_format_of :start, :with => /[A-Z]{3}\d{2}/
  
  def to_s
    "#{start}"
  end
end
