class Estudiante < ApplicationRecord
  belongs_to :carrera
  belongs_to :grupo
  has_and_belongs_to_many :clases
  has_many :entregas
end
