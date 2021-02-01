# frozen_string_literal: true

class Produto
  attr_accessor :nome, :categoria, :preco, :estoque

  def initialize(attributes)
    @nome = attributes[:nome]
    @categoria = attributes[:categoria] || Categoria.new
    @preco = attributes[:preco]
    @estoque = attributes[:estoque]
  end

  def adiciona_estoque(quantidade)
    @estoque += quantidade
  end

  def remove_estoque(quantidade)
    @estoque -= quantidade
  end
end
