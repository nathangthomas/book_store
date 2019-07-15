# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
@tom = Author.create!(name: "Tom")
@jerry = Author.create!(name: "Jerry")
@wile = Author.create!(name: "Wile E. Coyote")
@roadrunner = Author.create!(name: "Road Runner")

@book_1 = Book.create!(title: "The Art of the Chase", num_of_pages: 50, publication_year: "1986")
@book_2 = Book.create!(title: "The Essential Field Guide to: Traps, Illusions, and Evasion", num_of_pages: 200, publication_year: "1957")
@book_3 = Book.create!(title: "To Chase and to Be Chased", num_of_pages: 100, publication_year: "2000")

@book_1.authors << [@tom, @wile]
@book_2.authors << [@jerry, @roadrunner]
@book_3.authors << [@tom, @jerry, @wile, @roadrunner]
