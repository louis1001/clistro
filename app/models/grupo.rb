class Grupo < ApplicationRecord
  belongs_to :carrera

  def get_codigo
    anio = self.anio
    turno = self.turno ? "M" : "T"
    numero_grupo = self.id
    nom = self.carrera.abreviacion

    "#{anio}#{turno}#{numero_grupo}-#{nom}"
  end
end
