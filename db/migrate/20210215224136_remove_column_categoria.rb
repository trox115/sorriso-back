class RemoveColumnCategoria < ActiveRecord::Migration[6.0]
  def change
    remove_column :orcamentos, :doc_categoria_id
  end
end
