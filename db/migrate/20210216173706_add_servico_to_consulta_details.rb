class AddServicoToConsultaDetails < ActiveRecord::Migration[6.0]
  def change
    add_reference :consulta_details, :servico, null: false, foreign_key: true
  end
end
