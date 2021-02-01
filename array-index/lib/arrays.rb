# frozen_string_literal: true

class Arrays
  def self.multiplica_indices(array)
    array.each_with_index.map { |item, index| item * index }
  end
end
