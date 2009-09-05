$LOAD_PATH << "../../lib/Ruby"

require 'numbers'

class Integer

  def problem012
    i = 1
    while i.triangle_number.factors.length < self do
      i = i + 1
    end
    i.triangle_number
  end

end
