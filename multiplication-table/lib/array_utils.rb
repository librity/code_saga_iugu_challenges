# frozen_string_literal: true

class ArrayUtils
  def self.multiplos(quantity, multiplicand)
    result = Array.new(quantity, multiplicand)

    result.each_with_index.map do |element, index|
      element * (index + 1)
    end
  end

  def self.tabuada(quantity)
    result = Array.new(quantity)

    result.each_with_index.map do |_element, index|
      multiplos(10, (index + 1))
    end
  end
end
