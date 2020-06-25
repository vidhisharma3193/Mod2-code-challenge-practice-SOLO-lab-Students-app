# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Instructor.destroy_all
Student.destroy_all

5.times do 
    Instructor.create(name: Faker::Name.name)
end

12.times do 
    Student.create(name: Faker::Name.name, major: Faker::Educator.subject, age: rand(18..60), instructor: Instructor.all.sample)
end