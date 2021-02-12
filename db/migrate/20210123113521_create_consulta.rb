class CreateConsulta < ActiveRecord::Migration[6.0]
  def change
    create_table :consulta do |t|
      t.references :cliente, null: false, foreign_key: true
      t.references :servico, null: false, foreign_key: true
      t.text :obs

      t.timestamps
    end
  end
end
