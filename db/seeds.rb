require 'csv'
require 'date'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# puts 'Cleaning database...'
Flat.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    description:  'cozy flat 1 bedroom',
    price_per_night:  100,
    number_of_guests:  1
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    description:  'cozy flat 2 bedroom',
    price_per_night:  200,
    number_of_guests:  2
  },
  {
    name:         'Sprout works',
    address:      'Maoming Road',
    description:  'cozy flat 2 bedroom',
    price_per_night:  300,
    number_of_guests:  2
  },
  {
    name:         'Hefu',
    address:      'Nanjing West Road',
    description:  'cozy flat 2 bedroom',
    price_per_night:  180,
    number_of_guests: 2
  },
  {
    name:         'Macdonalds',
    address:      'Everywhere',
    description:  'Luxuary house 5 bedrooms',
    price_per_night:  1000,
    number_of_guests: 5
  }
]
Flat.create!(restaurants_attributes)

Supplier.destroy_all

csv_options = { col_sep: ';', quote_char: '"', headers: :first_row }
filepath2 = File.dirname(__FILE__) + '/suppliers.csv'
CSV.foreach(filepath2, csv_options) do |row|
Supplier.create(name: "#{row['name']}", short_name: "#{row['short_name']}", location_supplier: "#{row['location_supplier']}", location_dgcfs: "#{row['location_dgcfs']}",location_xmcfs: "#{row['location_xmcfs']}",location_yantian: "#{row['location_yantian']}", location_xiamen: "#{row['location_xiamen']}")
end
puts "created #{Supplier.all.length} suppliers"

puts 'Finished!'
