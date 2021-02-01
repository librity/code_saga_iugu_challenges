# frozen_string_literal: true

class Arrays
  def self.converte_impares_por(lista, numero)
    odds = lista.select(&:odd?)
    multiplied_odds = odds.map { |number| number * numero }

    [odds, multiplied_odds]
  end

  def self.converte_pares_por(lista, numero)
    evens = lista.select(&:even?)
    multiplied_evens = evens.map { |number| number * numero }

    [evens, multiplied_evens]
  end
end
