class CreateDentes < ActiveRecord::Migration[6.0]
  def change
    create_table :dentes do |t|
      t.string :nome

      t.timestamps
    end
  end
end
