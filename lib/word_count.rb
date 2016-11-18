class String
  define_method(:word_count) do |phrase|
    phrase_array = phrase.split(" ")
    target_word = self.downcase.gsub(/[^A-Za-z0-9\s,]/i, '')
    counter = 0
    phrase_array.each() do |words|
      if words == target_word
        counter += 1
      end
    end
    counter
  end
end
