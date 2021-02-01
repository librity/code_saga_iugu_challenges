# frozen_string_literal: true

class Produto
  attr_reader :nome, :categoria, :preco, :estoque

  def initialize(nome:, categoria: 'Geral', preco:, estoque:)
    @nome = nome
    @categoria = categoria
    @preco = preco
    @estoque = estoque
  end

  def adiciona_estoque(quantity)
    @estoque += quantity
  end

  def remove_estoque(quantity)
    @estoque -= quantity
  end
end
