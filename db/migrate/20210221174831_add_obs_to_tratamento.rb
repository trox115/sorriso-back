class AddObsToTratamento < ActiveRecord::Migration[6.0]
  def change
    add_column :tratamentos, :obs, :string
  end
end
