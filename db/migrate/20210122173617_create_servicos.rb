class CreateServicos < ActiveRecord::Migration[6.0]
  def change
    create_table :servicos do |t|
      t.string :nome
      t.references :categoria, null: false, foreign_key: true
      t.integer :custo

      t.timestamps
    end
  end
end
