class Dmarcacao < ApplicationRecord
  belongs_to :cliente
  scope :desde, ->(duration){ where('start BETWEEN ? AND ? ', Time.zone.today - duration, Time.zone.today ) }

end
