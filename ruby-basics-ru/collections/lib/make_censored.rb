# frozen_string_literal: true

def make_censored(text, stop_words)
  # BEGIN
  censore = '$#%!'
  words = text.split
  result = []
  words.each do |word|
    next_word = stop_words.include?(word) ? censore : word
    result << next_word
  end
  result.join(' ')
  # END
end
