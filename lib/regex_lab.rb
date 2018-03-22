require "pry"

def starts_with_a_vowel?(string)
  !!(string =~ /\b[aeiou]/i)
end

def words_starting_with_un_and_ending_with_ing(string)
  string.scan /\bun\w*ing\b/
end

def words_five_letters_long(string)
  string.scan /\b\w{5}\b/
end

def first_word_capitalized_and_ends_with_punctuation?(string)
  if string.match /\A[A-Z].*[.,;?!]\z/
    return true
  else
    false
  end
end

def valid_phone_number?(string)
  if string.match /(\d{3}[- ]?|\(\d{3}\) ?)\d{3}[- ]?\d{4}/
    return true
  else
    return false
  end
end
