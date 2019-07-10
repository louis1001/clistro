# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

primer_usuario = User.new
primer_usuario.email = 'luisal1207@hotmail.es'
primer_usuario.password = 'notMyRealPassword12.'
primer_usuario.password_confirmation = 'notMyRealPassword12.'
primer_usuario.save!

carreras = Carrera.create([
    {nombre: "Ing. en Sistemas", abreviacion: "IS"},
    {nombre: "Ing. Industrial", abreviacion: "IND"},
    {nombre: "Ing. Agroindustrial", abreviacion: "AGRO"},
    {nombre: "Ing. Civil", abreviacion: "CIV"},
])

grupos = Grupo.create([
    {carrera: carreras[0], anio: 1}
])

cl = Clase.new
cl.user = primer_usuario
cl.grupo = grupos.first
cl.nombre = "Matematica I"
cl.icon = "∂"
cl.save!

tareas = Tarea.create([
    {
        descripcion: "Prueba diagnostica",
        puntaje_maximo: 10,
        clase: cl
    },
    {
        descripcion: "Examen Final",
        puntaje_maximo: 90,
        clase: cl
    }
])

estudiantes = Estudiante.create([
    {
        nombre: "Luis",
        apellido: "Gonzalez",
        carrera: carreras[0],
        grupo: grupos.first
    },
    {
        nombre: "Bayar",
        apellido: "Falcon",
        carrera: carreras[0],
        grupo: grupos.first
    }
])

cl.estudiantes << estudiantes.first
cl.estudiantes << estudiantes.second