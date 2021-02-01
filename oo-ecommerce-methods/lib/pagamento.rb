# frozen_string_literal: true

class Pagamento
  attr_reader :produto, :quantidade, :preco, :valor

  def initialize(quantidade:, produto: 'Sem nome')
    @quantidade = quantidade
    @produto = produto
    @preco = produto.preco
  end

  def calcular_valor
    @produto.remove_estoque(@quantidade)
    @valor = @quantidade * @preco
  end

  def aplicar_desconto(porcentagem)
    @valor -= @valor * porcentagem / 100
  end
end
