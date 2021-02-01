# frozen_string_literal: true

class Numbers
  def sum_text(numbers_text)
    numbers_text.split.map(&:to_i).sum
  end
end
