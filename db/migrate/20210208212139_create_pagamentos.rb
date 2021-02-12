class CreatePagamentos < ActiveRecord::Migration[6.0]
  def change
    create_table :pagamentos do |t|
      t.references :cliente, null: false, foreign_key: true
      t.references :consulta, null: false, foreign_key: true
      t.string :metodo
      t.float :valor
      t.float :troco

      t.timestamps
    end
  end
end
