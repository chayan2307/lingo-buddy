# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


User.destroy_all

puts 'Creating users..'
User.create(email: 'deborah@email.com', rate: 10, first_name: 'Deborah', last_name: 'Reis')
User.create(email: 'chayan@email.com', rate: 15, first_name: 'Chayan', last_name: 'Agarwal')
User.create(email: 'chun@email.com', rate: 20, first_name: 'Chun', last_name: 'Man')
User.create(email: 'ella@email.com', rate: 25, first_name: 'Ella', last_name: 'Herlihy')


puts "Finished!"
