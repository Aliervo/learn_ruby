def add(first_number, second_number)
  first_number + second_number
end

def subtract(first_number, second_number)
  first_number - second_number
end

def sum array_of_numbers
  sum = 0
  array_of_numbers.each do |number|
    sum += number
  end
  sum
end

def multiply array_of_numbers
  product = 1
  array_of_numbers.each do |number|
    product *= number
  end
  product
end

def power(first_number, second_number)
  first_number ** second_number
end

def factorial number
  if number == 0 or number == 1
    1
  else
    factorial = 1
    while number > 0
      factorial *= number
      number -= 1
    end
    factorial
  end
end
