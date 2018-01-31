# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum = 0
  for int in arr
    sum = sum + int
  end
  return sum
end

def max_2_sum arr
  big_one = -10
  big_two = -10
  sum = 0
  if is_empty? arr
    return 0
    
    # I dont know if this counts as hardcoding or not? I think 1 elem is a base case?
  elsif arr.length == 1
    return arr[0]
  else
    for a in arr
      if a > big_one
        big_one = a
        index = arr.index(a)
      end
    end
    
    arr.delete_at(index)
    
    for a in arr
      if a > big_two
        big_two = a
      end
    end
    sum = big_one + big_two
    return sum
  end
end

def is_empty? arr
  if arr.length == 0
    return true
  else return false
  end
end


def sum_to_n? arr, n
  
  if arr.length <2
    return false
  else
    for i in arr
      for j in arr
        if ((arr.index(i) != arr.index(j)) && (i+j == n))
          return true
        end
      end
    end
    return false
  end
  # YOUR CODE HERE
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  s =~ /\A[bcdefghjklmnpqrstvxwyz]/i ? true : false
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # return false if s contains anything other than 1 or 0, or is an empty string
  if s =~ /[^10]/ || s == ""
      return false
      # return false if the binary ends with something other than 00
    elsif s =~ /01$|10$|11$/
      return false
      # we must be at a binary number that ends with 00
    else
      return true
  end
end

# Part 3

class BookInStock
  
  #Constructor to initialize the class. Also initialize ISBN & Price
  def initialize (isbn, price)
    puts "creating a new book"
    @isbn = isbn
    @price = price
  end
  
  #make the setters and getters
  attr_accessor :isbn, :price
# YOUR CODE HERE
end

book3 = BookInStock.new(50, 33.42)
