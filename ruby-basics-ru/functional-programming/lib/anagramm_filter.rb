# frozen_string_literal: true

# BEGIN
def anagramm_filter(word, words)
  words.filter { |w| w.chars.sort == word.chars.sort }
end
# END
