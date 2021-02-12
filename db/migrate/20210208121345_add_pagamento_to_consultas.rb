class AddPagamentoToConsultas < ActiveRecord::Migration[6.0]
  def change
    add_column :consulta, :pagamento, :integer, default: 0
  end
end
