# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
require "date"

if (Student.all.length > 0) 
    pp "Seeds already runned"
    return 
end

User.create(
    first_name: 
    "Julian", 
    last_name: "Allende", 
    email: "julianallenderussek@gmail.com", 
    password: "12345678",
    role: "admin",
)

User.create(
    first_name: 
    "Alonso", 
    last_name: "Martinez", 
    email: "alonso@gmail.com", 
    password: "123456",
    role: "admin"
)

User.create(
    first_name: 
    "Regina", 
    last_name: "Gomez", 
    email: "regina@gmail.com", 
    password: "123456",
    role: "employee"
)

Student.create(
    first_name: 
    "Julian Allende", 
    last_name: "Allende", 
    email: "julianallenderussek@gmail.com", 
    updated_at: DateTime.now(),
    sex: "male"
)

Student.create(
    first_name: 
    "Julian Allende", 
    last_name: "Allende", 
    email: "julianallenderussek@gmail.com", 
    updated_at: DateTime.now(),
    sex: "male"
)
