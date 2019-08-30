# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
lumley = Author.create(name: 'Brian Lumley')
necropscope = Book.create(title: 'The Necroscope', pages: 400, publication_year: 1986)
deadspeak = Book.create(title: 'Necroscope IV: Deadspeak', pages: 400, publication_year: 1990)
AuthorBook.create(author_id: lumley.id, book_id: necropscope.id)
