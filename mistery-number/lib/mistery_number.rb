# frozen_string_literal: true

class MisteryNumber
  def calculate(operation)
    terms, total = operation.split('=')
    total = total.to_i
    unknown = 0

    unknown += 1 while eval(terms.sub('?', unknown.to_s)) != total

    unknown
  end
end
