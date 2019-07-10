class Tarea < ApplicationRecord
  belongs_to :clase
  has_many :entregas
end
