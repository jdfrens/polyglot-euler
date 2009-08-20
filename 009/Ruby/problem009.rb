class Integer

  def pythagorean_triplet
    (1..self).to_a.each do |a|
      (1..(self-a)).to_a.each do |b|
        c = self - a - b
        return a * b * c if a*a + b*b == c*c
      end
    end
  end

end
