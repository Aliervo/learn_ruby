def echo string
  string
end

def shout string
  string.upcase
end

def repeat(string, number = 2)
  (string + ' ') * (number - 1) + string
end

def start_of_word(string, number)
  string.slice(0, number)
end

def first_word string
  string.split[0]
end

def titleize string
  string_arrayed = string.split
  array_titleized = []
  string_arrayed.each do |word|
    if array_titleized.length < 1 or word.length > 3 and word != "over"
      array_titleized << word.capitalize
    else
      array_titleized << word
    end
  end
  array_titleized.join(' ')
end
