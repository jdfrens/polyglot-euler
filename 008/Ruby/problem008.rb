class Integer

  def largest_five_digit_product
    lfdp(self.listify, 0)
  end
  
  def lfdp(list, current)
    if list.length < 5
      current
    else
      lfdp(list[1, list.length], [current, product5(list)].max)
    end
  end

  def product5(list)
    list[0] * list[1] * list[2] * list[3] * list[4]
  end

  def listify
    n = self
    list = []
    while n > 0 do
      list = [n % 10] + list
      n /= 10
    end
    list
  end
  
end
