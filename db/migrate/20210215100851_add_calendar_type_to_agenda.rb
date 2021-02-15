class AddCalendarTypeToAgenda < ActiveRecord::Migration[6.0]
  def change
    add_column :dmarcacaos, :tipo, :string, limit: 30
  end
end
