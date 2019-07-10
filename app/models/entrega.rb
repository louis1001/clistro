class Entrega < ApplicationRecord
  belongs_to :estudiante
  belongs_to :tarea
end
