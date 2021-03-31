require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Chad", last_name: "bud", hourly_rate: 2)
@store1.employees.create(first_name: "Big", last_name: "Lez", hourly_rate: 70)
@store2.employees.create(first_name: "Isamu", last_name: "Ito", hourly_rate: 61)
@store2.employees.create(first_name: "Someone", last_name: "Else", hourly_rate: 20)
@store2.employees.create(first_name: "Cool", last_name: "Kid", hourly_rate: 19)
