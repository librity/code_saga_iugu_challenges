# frozen_string_literal: true

class Assembly
  def compile(raw_instructions)
    @x = 0
    @instructions = raw_instructions.split("\n")
    @lines = @instructions.count
    one_strange_loop(0)

    @x
  end

  def one_strange_loop(starting_line)
    (starting_line...@lines).each do |line|
      command, params = @instructions[line].split(' ')
      value = params[/-?\d+/].to_i

      @x = value if command == 'mov'
      @x += value if command == 'add'
      @x -= value if command == 'sub'

      return one_strange_loop(value - 1) if command == 'jmp'
    end
  end
end
