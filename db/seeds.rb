# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#area
Area.create(name: "Gerencia")
Area.create(name: "Sistemas")

#charge
Charge.create(name: "Gerente")
Charge.create(name: "Ingeniero")

#departament
Departament.create(name: "Administración")
Departament.create(name: "Comunicaciones")

#role
Role.create(name: "Evaluador")
Role.create(name: "Evaluado")
Role.create(name: "EvaluadorEvaluado")

#user
User.create(name: "Jonathan Granados", email: "jgranadosmendez@gmail.com", step: 0,
  document: 1032459412, departament: Departament.find(1), role: Role.find(2), boss: 0,
  charge: Charge.find(1), area: Area.find(1), password: "1234", password_confirmation: "1234")

User.create(name: "Alexander Forero", email: "alexander@gmail.com", step: 0,
  document: 1234, departament: Departament.find(1), role: Role.find(1), boss: 0,
  charge: Charge.find(2), area: Area.find(1), password: "1234", password_confirmation: "1234")

User.create(name: "Jonathan Prieto", email: "podri@gmail.com", step: 0,
  document: 5678, departament: Departament.find(1), role: Role.find(3), boss: 0,
  charge: Charge.find(1), area: Area.find(1), password: "1234", password_confirmation: "1234")

#Random user
for i in 0..20
  User.create(name: Faker::Name.name, email: Faker::Internet.email, document: rand.to_s[2..10], step: 0, boss: 0,
    area: Area.find(1), charge: Charge.find(rand(1..2)), departament: Departament.find(rand(1..2)), role:
    Role.find(rand(1..3)), password: "1234", password_confirmation: "1234")
end
