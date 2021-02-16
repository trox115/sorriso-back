class CreateOrcamentoDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :orcamento_details do |t|
      t.references :orcamento, null: false, foreign_key: true
      t.references :servico, null: false, foreign_key: true
      t.references :dente, null: false, foreign_key: true

      t.timestamps
    end
  end
end
