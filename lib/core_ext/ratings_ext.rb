class Array
  def get_average
    averages = {}
    Rating.char_strengths.each do |strength|
      averages[strength] = 0
    end

    self.each do |rating|
      Rating.char_strengths.each do |strength|
        averages[strength] += rating.send(strength)
      end
    end

    averages.each do |key, value|
      averages[key] = (value/self.length.to_f).round(2)
    end
  end
end