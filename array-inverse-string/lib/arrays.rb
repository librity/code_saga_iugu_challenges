# frozen_string_literal: true

class Arrays
  def inverse_strings(array)
    array.reject { |word| array.include?(word.reverse) }
  end
end
