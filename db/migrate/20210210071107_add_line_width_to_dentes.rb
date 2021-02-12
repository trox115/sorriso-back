class AddLineWidthToDentes < ActiveRecord::Migration[6.0]
  def change
    add_column :dentes, :lineWidth, :integer, default: 1
  end
end
