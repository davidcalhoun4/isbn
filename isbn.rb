def isbn_verify?(isbn_string)

  # splits up string 
  number = isbn_string.split(//)
  
  # removes dashes
  number.delete("-")
  
  # more or less than 10 characters
  if 
    number.length != 10
    return false
  end

  # ends with X
  if
    number[-1] == "X"
    return true
  end

  # Check the isbn formula
  multiplier = 10
  sum = 0
  number.each do |num|
    sum+= num.to_i * multiplier
    multiplier -= 1
  end

  # divisible by 11
  remainder = sum % 11
  if remainder == 0
    return true
  else
    return false
  end
  
end