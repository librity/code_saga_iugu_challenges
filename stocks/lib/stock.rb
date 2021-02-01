# frozen_string_literal: true

class Stock
  def evaluate(stonck)
    name, raw_prices = stonck.split(':')
    "#{name}:#{raw_prices.split.map(&:to_i).combination(2)
    .map { |prices| prices[1] - prices[0] }.max}"
  end

  def evaluate_stocks(stoncks)
    stoncks.split("\n").map { |stonck| evaluate(stonck) }
           .max_by { |evaluation| evaluation.split(':')[1].to_i }
  end
end
