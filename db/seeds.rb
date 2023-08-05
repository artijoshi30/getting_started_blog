# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

library = Library.create(name: 'Example Library')
book1 = library.books.create(title: 'Book 1', status: 'available')
book2 = library.books.create(title: 'Book 2', status: 'checked_out', checked_out_to: 1)
