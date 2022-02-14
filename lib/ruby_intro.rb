# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # sums the contents of an array
  sum = 0
  arr.each { |v| sum += v }
  return sum
end

def max_2_sum arr
  if (arr.empty?()) # if empty array
    return 0
  elsif arr.length == 1  # if length 1, return that element
    return arr[0]
  else # if at least 2 elements, do regular implementation
    max_elm = arr.min()
    max_elm2 = arr.min()
    arr.each { |v| if v >= max_elm then max_elm2 = max_elm and max_elm = v elsif v > max_elm2 then max_elm2 = v end }
    return max_elm+max_elm2
  end
end

def sum_to_n? arr, n
  for i in 0...arr.length() # iterate through indicies
    for j in 0...arr.length() # iterate again
      return true if i != j and arr[i] + arr[j] == n
    end
  end
  return false
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
