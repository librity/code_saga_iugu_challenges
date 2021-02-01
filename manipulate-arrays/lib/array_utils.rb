# frozen_string_literal: true

class ArrayUtils
  def self.compara(first_array, second_array)
    first_array.sort == second_array.sort
  end

  def self.divisiveis(first_factor, second_factor)
    [
      (1..50).select { |number| common_factor?(number, first_factor, second_factor) },
      (1..50).select { |number| exclusive_factor?(number, first_factor, second_factor) },
      (1..50).select { |number| exclusive_factor?(number, second_factor, first_factor) }
    ]
  end

  def self.soma(array)
    array.sum
  end

  def self.combinar(first_array, second_array)
    first_array.product(second_array)
  end

  def self.common_factor?(number, factor_a, factor_b)
    (number % factor_a + number % factor_b).zero?
  end

  def self.exclusive_factor?(number, factor_a, factor_b)
    (number % factor_a).zero? && (number % factor_b != 0)
  end
end
