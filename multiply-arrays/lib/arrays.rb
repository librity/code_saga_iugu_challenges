# frozen_string_literal: true

class Arrays
  def self.multiplica_antecessor_predecessor(array)
    array.each_with_index.map do |element, index|
      next element * array[1] if first_element?(index)
      next array[-2] * array[-1] if last_element?(index, array)

      array[index - 1] * array[index + 1]
    end
  end

  def self.first_element?(index)
    index.zero?
  end

  def self.last_element?(index, array)
    (index + 1) == array.count
  end
end
