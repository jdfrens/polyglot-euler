class Integer
  def palindrome?
    self.to_s.reverse == self.to_s
  end
  
  def find_palindrome_product
    products.select { |p| p.palindrome? }.max
  end
  
  def products
    products = []
    (self..(self*10-1)).each do |x|
      (self..(self*10-1)).each do |y|
        products << (x * y)
      end
    end
    products
  end
end
