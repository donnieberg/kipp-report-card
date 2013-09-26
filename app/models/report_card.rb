class ReportCard < ActiveRecord::Base
  attr_accessible :quarter, :year, :student

  belongs_to :student
  has_many :ratings
end
