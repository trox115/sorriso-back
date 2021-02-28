class CreateBocas < ActiveRecord::Migration[6.0]
  def change
    create_table :bocas do |t|
      t.references :cliente, null: false, foreign_key: true
      t.references :servico, null: false, foreign_key: true

      t.timestamps
    end
  end
end
