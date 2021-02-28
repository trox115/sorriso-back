class AddConsultaIdToBoca < ActiveRecord::Migration[6.0]
  def change
    add_reference :bocas, :consulta, null: false, foreign_key: true
  end
end
