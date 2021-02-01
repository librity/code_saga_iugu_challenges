# frozen_string_literal: true

class Pagamento
  attr_reader :quantidade, :produto, :preco, :valor

  def initialize(quantidade:, produto: 'Sem nome', preco:)
    @quantidade = quantidade
    @produto = produto
    @preco = preco
  end

  def calcular_valor
    @valor = quantidade * preco
  end

  def aplicar_desconto(discount)
    @valor -= discount
  end
end
