# frozen_string_literal: true

class Word
  LETTERS = ('a'..'z').to_a + ('A'..'Z').to_a
  VOWELS = 'aáãeéoóuúiíyAÁEÉIÍOÓUÚ'
  CONSONANTS = (LETTERS - VOWELS.split('')).join

  def vowels_count(phrase)
    phrase.count(VOWELS)
  end

  def consonants_count(phrase)
    phrase.count(CONSONANTS)
  end
end
