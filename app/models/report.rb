# == Schema Information
#
# Table name: reports
#
#  id                 :integer          not null, primary key
#  student_id         :integer
#  day                :string(255)
#  finished_exercises :string(255)
#  read_solutions     :string(255)
#  read_readings      :string(255)
#  material_rating    :integer
#  good_concept       :text
#  bad_concept        :text
#  pair_rating        :integer
#  pair_comments      :text
#  comments           :text
#  created_at         :datetime
#  updated_at         :datetime
#  ta_id              :integer
#  blog_link          :string(255)
#

class Report < ActiveRecord::Base
  validates :student, :day, presence: true

  belongs_to :student, inverse_of: :reports
  belongs_to :ta
  
  def self.generate_new_reports(student)
    (1..9).step do |week|
      (1..5).step do |day|
        student.reports.build({day: "W#{week}D#{day}"})
      end
    end
    nil
  end
  
  def to_s
    day
  end
  
  def submitted?
    false
  end
end
