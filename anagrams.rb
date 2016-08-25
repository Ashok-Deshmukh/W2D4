require "byebug"

 # PHASE ONE

## O(n!)

def first_anagram?(str1, str2)

  str1_ana = []
  poss_combos = factorial(str1.length)
  until str1_ana.length == poss_combos
    shuffled_word = str1.split('').shuffle.join
    str1_ana << shuffled_word unless str1_ana.include?(shuffled_word)
  end
  str1_ana.include?(str2)

end

def factorial(num)   # O(n) complexity, but because it generates !
  return 1 if num == 0  # when you use it, you're using your algorithm ! times
  fac = factorial(num - 1)
  fac = num * fac
  fac
end

# PHASE TWO
## O(n^2)
def ana2(str1, str2)
  if str1.length != str2.length
    return false
  end
  str1arr = str1.split("")
  str2arr = str2.split("")
  i = 0
  while i < str1.length #this is a loop
    if str2arr.include?(str1arr[i]) #n time
      idx = str2arr.find_index(str1arr[i]) #a loop
      str2arr.delete_at(idx)
    end
    i += 1
  end
  if str2arr.empty?
    return true
  end
  false
end

# PHASE THREE
# O(n*log(n)) because sort is being called
def ana3(str1, str2)
  sorted1 = str1.split('').sort
  sorted2 = str2.split('').sort
  sorted1 == sorted2    #however ruby does .sort  (input dependent, but qs?)
end

 # PHASE FOUR
 # O(n), because you whileloop through the string to make hash
def ana4(str1, str2)
  return false unless str1.length == str2.length
  letters = Hash.new(0)
  i = 0
  while i < str1.length
    letters[str1[i]] += 1
    letters[str2[i]] -= 1
    i += 1
  end
  letters.values.all? { |value| value == 0  }
end
