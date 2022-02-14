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
  return "Hello, " + name
end

def starts_with_consonant? s
  # if string is empty, return false
  # otherwise, extract first letter (lowercase), verify letter, and check if in list of vowels
  !s.empty? && s[0] =~ /[a-zA-Z]/ and s[0].downcase =~ /[^aeiou]/
end

def binary_multiple_of_4? s
  # if valid binary number and last 2 numbers are 0, then it passes
  # also has to be long enough ig (if 0 length invalid, if 1 letter then must be zero)
  # if 1 letter and zero,      , or 2+ letters      and no non-(0-1) number and last 2 letters are 0
  (s.length() == 1 and s == "0") or (s.length() > 1 and !s.match(/[^0-1]/) and s[-2...] == "00")
end

# Part 3

class BookInStock
  # constructor
  def initialize _isbn, _price
    # check for valid inputs
    raise ArgumentError.new "invalid argument" if _isbn.empty? or _price <= 0
    
    # set parameters to class members
    @isbn = _isbn
    @price = _price
    
  end
  
  # isbn instance method (getter)
  def isbn
    @isbn
  end
  
  # setter function
  def isbn=(new_isbn)
    @isbn = new_isbn
  end
  
  # isbn instance method (getter)
  def price
    @price
  end
  
  # setter function
  def price=(new_price)
    @price = new_price
  end
  
  # part 3
  def price_as_string
    # returns price in string format with $ and 2 decimals
    return "$%0.2f" % [@price]
  end
end
