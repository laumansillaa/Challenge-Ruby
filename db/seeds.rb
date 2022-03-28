# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)



# validates :nombre, presence: true
# validates :apellido, presence: truename

User.create({
    name: "Lautaro",
    age: "25 años",
    weigth: "63",
    resume: "Soy un intento de developer",
    movies: "ninguna"

})

User.create({
    name: "Juan",
    age: "28 años",
    weigth: "73",
    resume: "Soy un puto developer",
    movies: "ninguna"

})