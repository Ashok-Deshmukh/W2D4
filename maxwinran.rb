#Naive Solution

def naive_mwr(array,range)
  current_max_range = nil
  (0..(array.length - range)).each do |i|
    window = array[i...i + range]
    min, max = nil, nil
    window.each do |el|
      if min.nil? || el < min
        min = el
      end
      if max.nil? || el > max
        max = el
      end
    end
    if current_max_range.nil? || (max - min) > current_max_range
      current_max_range = max - min
    end
  end
  current_max_range
end


def opt_mwr(array, range)



end

class MMSQueue

  def initialize
    @queue = []
  end

end
