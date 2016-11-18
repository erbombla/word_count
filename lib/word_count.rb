class String
  define_method(:word_count) do |phrase|
    phrase_array = phrase.split(" ")
    target_word = self
    counter = 0
    phrase_array.each() do |words|
      if words == target_word
        counter += 1
      end
    end
    counter
  end
end
