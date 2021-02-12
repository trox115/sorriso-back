class CreateOrcamentos < ActiveRecord::Migration[6.0]
  def change
    create_table :orcamentos do |t|
      t.references :cliente, null: false, foreign_key: true
      t.references :doc_categoria, null: false, foreign_key: true
      t.datetime :validade
      t.references :servico, null: false, foreign_key: true

      t.timestamps
    end
  end
end
