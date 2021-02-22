class Change < ActiveRecord::Migration[6.0]
  def change
    change_column :clientes, :bi, :bigint
    change_column :clientes, :nif, :bigint

  end
end
