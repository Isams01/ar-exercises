require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...
# Burnaby (annual_revenue of 300000, carries men's and women's apparel)
# Richmond (annual_revenue of 1260000 carries women's apparel only)
# Gastown (annual_revenue of 190000 carries men's apparel only)

#employees
# id | store_id | first_name | last_name | hourly_rate | created_at | updated_at 

# Stores
# id | name | annual_revenue | mens_apparel | womens_apparel | created_at | updated_at 

store = Store.new do |s|
  s.name = "Burnaby"
  s.annual_revenue = 300000
  s.mens_apparel = true
  s.womens_apparel = true
  s.save
end

store = Store.new do |s|
  s.name = "Richmond"
  s.annual_revenue = 1260000
  s.mens_apparel = false
  s.womens_apparel = true
  s.save
end

store = Store.new do |s|
  s.name = "Gastown"
  s.annual_revenue = 190000
  s.mens_apparel = true
  s.womens_apparel = false
  s.save
end

puts Store.count

