class Rating < ActiveRecord::Base
  attr_accessible :report_card, :author
  attr_accessible :grit, :zest, :school_work, :interpersonal, :optimism, :gratitude, :social_intelligence, :curiosity

  belongs_to :report_card

end