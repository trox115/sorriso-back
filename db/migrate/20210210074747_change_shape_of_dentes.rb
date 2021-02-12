class ChangeShapeOfDentes < ActiveRecord::Migration[6.0]
  def change
    add_column :dentes, :shape, :string, default: 'poly'
  end
end
