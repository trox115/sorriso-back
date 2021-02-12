class Categoria < ApplicationRecord
    has_many :servicos, dependent: :destroy
end
