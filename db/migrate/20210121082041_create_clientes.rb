class CreateClientes < ActiveRecord::Migration[6.0]
  def change
    create_table :clientes do |t|
      t.string :nome
      t.integer :bi
      t.integer :nif
      t.integer :utente
      t.integer :telefone
      t.string :email
      t.boolean :seguro
      t.integer :numSeguro
      t.text :morada
      t.text :observacoes
      t.string :dataNascimento

      t.timestamps
    end
  end
end
