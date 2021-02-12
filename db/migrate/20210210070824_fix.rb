class Fix < ActiveRecord::Migration[6.0]
  def change
    rename_column :dentes, :coordinate, :coords
  end
end
