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
  # YOUR CODE HERE
end

# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
