# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts "💣 Destroying old data"
Student.destroy_all

puts "Seeding students"
s1 = Student.create(first_name: "Matilda", last_name: "Salavarrieta")
s2 = Student.create(first_name: "Policarpa", last_name: "Viciosa")

puts "done"