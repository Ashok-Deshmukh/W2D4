require 'byebug'


#This is O(n^2)
def brute_two_sum?(arr, target)

  (0...arr.length - 1).each do |i|
    (i + 1...arr.length).each do |j|
      if arr[i] + arr[j] == target
        return true
      end
    end
  end
  false
end

#This is O(n^2)
## What does sorting do to the lower bound of your time complexity?



def okay_two_sum?(arr, target)
  sorted = arr.sort
  sorted.each do |el|
    unless ourbsearch(sorted, target - el).nil?
      return true
    end
  end
  false
end

def ourbsearch(array, target)
  return nil if array.empty?
  middle = array.length/2
  left, right = array.take(middle), array.drop(middle + 1)
  if array[middle] == target
    return middle
  elsif array[middle] > target
    ourbsearch(left, target)
  elsif array[middle] < target
    sub_array = ourbsearch(right, target)
    (sub_array.nil?) ? nil : middle + sub_array + 1
  end
end

   # doesn't actually use the sort, is while looping twice so O(n^2)
  # sorted = arr.sort
  # i = 0
  # j = i + 1
  # while i < arr.length - 1
  #   while j < arr.length
  #     if arr[i] + arr[j] == target
  #       return true
  #     end
  #     break if arr[i] + arr[j] > target
  #     j += 1
  #   end
  #   i += 1
  # end
  # false
#

#O(n)
def two_sum(arr, target)

  compl = Hash.new(0)
  compl[target - arr.first] += 1
  arr.drop(1).each do |el|
    compl[target - el] += 1
    flag = false
    unless (compl[el] == 1) && (target / 2 == el)
      if compl.has_key?(el)
        return true
      end
    end
    # if (compl[el] == 1) && (target / 2 == el)
    #   flag = false
    # end
    # return flag if flag == true
  end
  false
end
