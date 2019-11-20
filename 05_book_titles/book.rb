class Book
  attr_accessor :title
  
  def title
    short_but_capitalized = ['eat', 'day', 'i', 'was', 'man']
    words = []
    @title.split.each do |word|
      if word.length > 3 or words == [] or short_but_capitalized.index(word) != nil
        words << word.capitalize
      else
        words << word
      end
    end
    words.join(' ')
  end
end
