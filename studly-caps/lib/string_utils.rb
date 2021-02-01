# frozen_string_literal: true

class StringUtils
  def wavefy(string)
    string.split('').each_with_index.map do |letter, index|
      index.even? ? letter.downcase : letter.upcase
    end.join('')
  end
end
