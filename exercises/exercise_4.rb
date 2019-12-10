require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# 1. Borrowing and modifying the code from Exercise one, create 3 more stores:
#   * Surrey (annual_revenue of 224000, carries women's apparel only)
#   * Whistler (annual_revenue of 1900000 carries men's apparel only)
#   * Yaletown (annual_revenue of 430000 carries men's and women's apparel)
# 2. Using the `where` class method from Active Record, fetch (a collection of) only those stores that carry men's apparel. Assign the results to a variable `@mens_stores`.
# 3. Loop through each of these stores and output their name and annual revenue on each line.
# 4. Do another fetch but this time load stores that carry women's apparel and are generating less than $1M in annual revenue.

# Your code goes here ...
puts "Count Before #{Store.count}"

def create_store(name, annual_revenue, womens_apparel = false, mens_apparel = false)
  return Store.create do |store|
      store.name           = name
      store.annual_revenue = annual_revenue
      store.womens_apparel = womens_apparel
      store.mens_apparel   = mens_apparel
    end
end

surrey = create_store("Surrey", 224000, true)
whistler = create_store("Whistler", 1900000, false, true)
yaletown = create_store("Yaletown", 430000, true, true)

puts "Count After #{Store.count}"