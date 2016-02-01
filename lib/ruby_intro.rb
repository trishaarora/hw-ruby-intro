# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  s = 0 
  arr.each{ |i| s += i}
  return s
end

def max_2_sum arr
  if arr.length == 0
    s = 0 
  elsif arr.length == 1
    s = arr[0]
  else
    arr = arr.sort{|x,y| y <=> x}
    s = arr[0] + arr[1]
  end
  return s
end

def sum_to_n? arr, n
  if arr.length == 0
    return false
  elsif arr.length == 1
    return false
  else
    for i in 0...arr.length 
      for j in i+1...arr.length
       if (arr[i] + arr[j] == n) 
         return true
       end
      end
    end
  return false
  end
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  s = s.downcase
  con1 = /[a-z]/ =~ s
  con2 = /^[aeiou]/ =~ s 
  
  if s.length == 0
    return false
  elsif con1 != 0
    return false
  elsif con2 == 0
    return false
  else 
    return true
  end
end

def binary_multiple_of_4? s
  mult = /\A[01]+00\Z/ =~ s
  
  if mult == 0 || s == "0"
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
    @isbn = isbn
    @price = price
    reject(isbn, price)
  end
  
  def reject(isbn, price)
    if isbn.length == 0 || price <= 0.0
      raise ArgumentError
    end
  end
  
  def price_as_string()
    price = price.to_s
    puts price
    decloc = /[.]/ =~ price
    decimalp = price.length - decloc
    puts decimalp
    if decimalp >= 2
      price = price.round(2)
      return "$#{price}"
    elsif decimalp == 1
      return "$#{price}0"
    else
      return "$#{price}.00"
    end
  end
end
book= BookInStock.new("isbn", 30)
