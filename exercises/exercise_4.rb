require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

# Surrey (annual_revenue of 224000, carries women's apparel only)
# Whistler (annual_revenue of 1900000 carries men's apparel only)
# Yaletown (annual_revenue of 430000 carries men's and women's apparel)

store = Store.new do |s|
  s.name = "Surrey"
  s.annual_revenue = 224000
  s.mens_apparel = false
  s.womens_apparel = true
  s.save
end

store = Store.new do |s|
  s.name = "Whistler"
  s.annual_revenue = 1900000
  s.mens_apparel = true
  s.womens_apparel = false
  s.save
end

store = Store.new do |s|
  s.name = "Yaletown"
  s.annual_revenue = 430000
  s.mens_apparel = true
  s.womens_apparel = true
  s.save
end

@mens_stores = Store.where(mens_apparel: true)
@womens_stores = Store.where(womens_apparel: true)

puts "--- Mens Stores ---"
@mens_stores.each do |store|
  puts "Name: #{store.name}, Annual Revenue: #{store.annual_revenue}"
end

puts "--- Womens Stores ---"
@womens_stores.map do |store|
  if store.annual_revenue < 1000000
    puts "Name: #{store.name}, Annual Revenue: #{store.annual_revenue}"
  end
end
