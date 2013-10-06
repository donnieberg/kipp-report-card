class Rating < ActiveRecord::Base
  attr_accessible :report_card, :author
  class << self
    attr_accessor :char_strengths
  end
  @char_strengths = [:grit, :zest, :school_work, :interpersonal, :optimism, :gratitude, :social_intelligence, :curiosity]


  char_strengths.each do |strength|
    attr_accessible strength
  end

  belongs_to :report_card

end