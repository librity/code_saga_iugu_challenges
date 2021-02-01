# frozen_string_literal: true

class Drone
  def manhattan_distance(instructions)
    @parsed_instructions = instructions.split

    (calculate_total('N') - calculate_total('S')).abs +
      (calculate_total('L') - calculate_total('O')).abs
  end

  def calculate_total(direction)
    @parsed_instructions
      .select { |instruction| instruction.include?(direction) }
      .map { |instruction| instruction.delete('^0-9') }
      .map(&:to_i).sum
  end
end
