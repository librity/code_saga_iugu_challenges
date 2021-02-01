# frozen_string_literal: true

class Produto
  attr_reader :nome, :categoria, :preco, :estoque

  def initialize(nome:, categoria: nil, preco:, estoque:)
    @nome = nome
    @categoria = categoria || Categoria.new
    @preco = preco
    @estoque = estoque
  end

  def adiciona_estoque(quantidade)
    @estoque += quantidade
  end

  def remove_estoque(quantidade)
    @estoque -= quantidade
  end
end
