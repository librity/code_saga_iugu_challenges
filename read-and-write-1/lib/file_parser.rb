# frozen_string_literal: true

class FileParser
  def to_integer(binary_string)
    binary_string.to_i(2)
  end

  def convert(file_path)
    File.read(file_path).split.map { |number| to_integer(number) }.sum
  end
end
