def translate string
  arrayed_string = string.downcase.split
  capitalization_string = string.split
  vowels = ["a", "e", "i", "o", "u"]
  multigraphs = ["thr", "ch", "th", "tr", "sh", "sch", "qu", "squ", "br"]
  punctuation = [".", ",", ":", ";", "?", "!"]
  pig_latin = []
  arrayed_string.each do |word|
    vowels.each do |letter|
      if word.index(letter) == 0
        pig_latin << word + 'ay'
      end
    end
    multigraphs.each do |phoneme|
      if word.index(phoneme) == 0 and pig_latin.length != arrayed_string.index(word) + 1
        pig_latin << word[phoneme.length..-1] + phoneme + 'ay'
      end
    end
    if pig_latin == [] or pig_latin.last[0..-3].split('').sort != word.split('').sort#push the word if no word is pushed or the last word pushed is not the translation of the current word
      pig_latin << word[1..-1] + word[0] + 'ay'
    end
  end
  capitalization_string.each do |word|
    if word.capitalize == word
      pig_latin[capitalization_string.index(word)] = pig_latin[capitalization_string.index(word)].capitalize
    end
  end
  pig_latin.each do |word|
    punctuation.each do |mark|
      if word.index(mark) != nil
        pig_latin[pig_latin.index(word)] = word.slice(0, word.index(mark)) + word.slice(word.index(mark) + 1, word.length - 1) + word.slice(word.index(mark))
      end
    end
  end
  pig_latin.join(' ')
end
