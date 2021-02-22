class DashboardController < ApplicationController
  def dashboard
    hoje = Dmarcacao.where('start >= ?', Time.now.beginning_of_day)
    ultimos30 = Dmarcacao.desde(30.days)
    orcamentos = Orcamento.count
    materialMenos = Produto.minimum(:quantidade)
    recebido = Pagamento.sum(:valor)
    render json: {hoje:hoje, ultimos30: ultimos30, orcamentos: orcamentos, material: materialMenos, pagamento: recebido-0}
  end
end