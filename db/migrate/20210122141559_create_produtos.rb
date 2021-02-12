class CreateProdutos < ActiveRecord::Migration[6.0]
  def change
    create_table :produtos do |t|
      t.string :nome
      t.integer :quantidade
      t.integer :custo

      t.timestamps
    end
  end
end
