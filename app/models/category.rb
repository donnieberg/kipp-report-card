class Category < ActiveRecord::Base
  attr_accessible :content

  has_many :char_strengths
  has_many :ratings, through: :char_strengths

end
