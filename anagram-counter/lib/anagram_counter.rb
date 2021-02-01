# frozen_string_literal: true

class AnagramCounter
  def count(list)
    words = list.split.map { |word| word.chars.sort.join }
    words.select { |word| words.count(word) > 1 }.count
  end
end
