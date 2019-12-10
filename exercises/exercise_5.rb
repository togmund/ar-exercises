require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
puts "Total Revenue is #{Store.sum(:annual_revenue)}"
puts "Average Revenue is #{Store.sum(:annual_revenue)/Store.count}"
puts "There are #{Store.where("annual_revenue > ?", 999999).count} high earning stores"