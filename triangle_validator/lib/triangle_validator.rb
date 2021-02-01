# frozen_string_literal: true

class TriangleValidator
  def validate_list(list)
    combinations = list.split.map(&:to_i).combination(3)
    valid_triangles = combinations.select do |sides|
      sides.sum - sides.max > sides.max
    end

    valid_triangles.map { |sides| sides.reduce(&:*) }
  end
end
