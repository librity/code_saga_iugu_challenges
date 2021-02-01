# frozen_string_literal: true

class PasswordValidator
  def valid_passwords(list)
    list.map do |string|
      rule, password = string.split(':')
      min_max, letter = rule.split(' ')
      min, max = min_max.split('->')
      count = password.count(letter)

      next password if min.to_i <= count && count <= max.to_i
    end.compact
  end
end
