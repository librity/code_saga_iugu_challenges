# frozen_string_literal: true

class FileParser
  FILE_PATH = 'data/data.txt'

  def to_binary_file(integer_string)
    binary_string = integer_string.split(';').map do |integer|
      integer.to_i.to_s(2)
    end.join("\n")

    File.write(FILE_PATH, binary_string)
  end
end
