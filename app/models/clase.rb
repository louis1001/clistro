class Clase < ApplicationRecord
  belongs_to :user
  belongs_to :grupo
  has_and_belongs_to_many :estudiantes
  has_many :tareas
end
