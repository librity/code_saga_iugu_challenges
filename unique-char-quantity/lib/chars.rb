# frozen_string_literal: true

class Chars
  def unique_quantity(text)
    text.split(' ').map { |word| word.split('').uniq.count }.sum
  end
end
