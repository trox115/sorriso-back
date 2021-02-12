class CreateDmarcacaos < ActiveRecord::Migration[6.0]
  def change
    create_table :dmarcacaos do |t|
      t.references :cliente, null: false, foreign_key: true
      t.datetime :start
      t.datetime :end

      t.timestamps
    end
  end
end
