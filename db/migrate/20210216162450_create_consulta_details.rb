class CreateConsultaDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :consulta_details do |t|
      t.references :tratamento, null: false, foreign_key: true
      t.references :consulta, null: false, foreign_key: true

      t.timestamps
    end
  end
end
