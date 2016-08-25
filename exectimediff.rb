require 'byebug'

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
## phase 1
## O(n^2)
def my_min1(array)
  current_smallest = array.first
  i = 0
  j = 0
  while i < array.length
    while j < array.length
      if array[j] < array[i] #&& array[j] < current_smallest
        current_smallest = array[j]
      end
      j += 1
    end
    i += 1
  end
  current_smallest
end

##phase 2
## O(n)
def my_min2(array)
  current_smallest = array.first
  array.each_index do |i|
    if array[i] < current_smallest
      current_smallest = array[i]
    end
  end
  current_smallest
end


#phase 1
## O(n^2)
def lcs1(array)

  subs = []

  i = 0
  while i < array.length
    j = i
    while j < array.length
      subs << array[i..j]
      j += 1
    end
    i += 1
  end

  print subs

  largestsum = subs.first.first
  subs.each do |array|
    onesum = array.inject(:+)
    if onesum > largestsum
      largestsum = onesum
    end
  end
  largestsum
end

#phase 2
# O(n) because we've only got one loop


def lcs2(array)
  now = array.first
  max = array.first
  i = 1
  while i < array.length
    if now < 0
      now = 0
    end
  now += array[i]
  max = now  if now > max
  i += 1
  end
  max
end
