class Addutente < ActiveRecord::Migration[6.0]
  def change
    change_column :clientes, :utente, :bigint
  end
end
