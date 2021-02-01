# frozen_string_literal: true

class ProdutoLivro < Produto
  attr_reader :autor, :genero, :paginas

  def initialize(attributes)
    super(attributes)
    @autor = attributes[:autor]
    @genero = attributes[:genero]
    @paginas = attributes[:paginas]
  end
end
