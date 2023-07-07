# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


Register.destroy_all

Register.create(fullname: "levin", email: "levin@gmail.com", number: "0712345678", date: "12/3/2000", region: "nairobi", availability: "part-time")
Register.create(fullname: "achieng", email: "achieng@gmail.com", number: "070987654", date: "2/2/1990", region: "nakuru", availability: "part-time")
Register.create(fullname: "dieto", email: "dieto@gmail.com", number: "0734565432", date: "2/5/2003", region: "kisumu", availability: "full-time")