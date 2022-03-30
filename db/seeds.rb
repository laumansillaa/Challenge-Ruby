# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)



# validates :nombre, presence: true
# validates :apellido, presence: truename

Character.create({
    name: "Pedro",
    age: "56 años",
    weigth: "63",
    resume: "soy Meterologo",
    movies: "ninguna"

})

Character.create({
    name: "Juan",
    age: "28 años",
    weigth: "73",
    resume: "no tengo profesion",
    movies: "ninguna"

})