class AddCoordinateToDentes < ActiveRecord::Migration[6.0]
  def change
    add_column :dentes, :coordinate, :integer, array: true, default: []
  end
end
