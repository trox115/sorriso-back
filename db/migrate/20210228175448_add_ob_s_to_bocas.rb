class AddObSToBocas < ActiveRecord::Migration[6.0]
  def change
    add_column :bocas, :obs, :string
  end
end
