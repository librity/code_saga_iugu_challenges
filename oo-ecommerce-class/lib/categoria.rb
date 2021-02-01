# frozen_string_literal: true

class Categoria
  attr_reader :nome

  def initialize(nome: 'Geral')
    @nome = nome
  end
end
