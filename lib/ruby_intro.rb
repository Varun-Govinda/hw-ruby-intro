# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  if arr.length == 0
    return 0
  end  
    ans = 0
    for i in arr
      ans = ans + i
    end
    return ans
end

def max_2_sum arr
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    second = arr.sort[-2]
    first = arr.sort[-1]
    total = first + second
    return total
  end  
end 


def sum_to_n? arr, n
  if arr.length == 1
    return false
  end
  if arr == []
  	return false
  end
  for index_1 in 0...arr.length
  	for index_2 in (index_1 + 1)...arr.length
  		if arr[index_2] + arr[index_1] === n
  			return true
  		end
  	end
  end
  
  return false
  
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  if (s =~ /[bcdfghjklmnpqrstvwxyz]/i) == 0
    return true
  else
    return false
  end
end

def binary_multiple_of_4? s
  if !(s =~ /\A[-+]?[0-9]+\z/) and !(s.is_a? Integer) 
    return false
  end
  s = s.to_i
  if s%4 == 0
    return true
  else
   return false
  end
end

# Part 3

class BookInStock
  attr_accessor :isbn
  attr_accessor :price
  
  def initialize(isbn, price)
    if isbn.size ==0 or price <=0
      raise ArgumentError, "In valid arguments"
    end
    @isbn = isbn
    @price = price
  end
  def price_as_string
    format("$%0.2f",@price)
  end
end
