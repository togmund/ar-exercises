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
@store1.employees.create(first_name: "Frank", last_name: "Rose", hourly_rate: 50)
@store2.employees.create(first_name: "Joseph", last_name: "Kettleman", hourly_rate: 30)
@store2.employees.create(first_name: "Marco", last_name: "Polo", hourly_rate: 90)