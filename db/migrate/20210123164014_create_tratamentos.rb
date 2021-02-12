class CreateTratamentos < ActiveRecord::Migration[6.0]
  def change
    create_table :tratamentos do |t|
      t.references :dente, null: false, foreign_key: true
      t.references :cliente, null: false, foreign_key: true
      t.string :estado

      t.timestamps
    end
  end
end
