class ConsultaSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id, :cliente_id, :pagamento, :obs, :image
  def image
    pp :id
    if object.image.attached?
      {
        url: rails_blob_url(object.image)
      }
    end
  end
end
