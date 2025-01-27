# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Author.destroy_all
Book.destroy_all

lumley = Author.create(name: 'Brian Lumley')
necropscope = Book.create(title: 'The Necroscope', pages: 512, publication_year: 1986)
deadspeak = Book.create(title: 'Necroscope IV: Deadspeak', pages: 400, publication_year: 1990)
# lumley_book_1 = AuthorBook.create(author_id: lumley.id, book_id: necropscope.id)
# lumley_book_4 = AuthorBook.create(author_id: lumley.id, book_id: deadspeak.id)
lumley.books << necropscope
lumley.books << deadspeak

coelho = Author.create(name: 'Paulo Coelho')
alchemist = Book.create(title: 'The Alchemist', pages: 167, publication_year: 1988)
coelho.books << alchemist

barry = Author.create(name: 'Max Barry')
jenngovt = Book.create(title: 'Jennifer Government', pages: 320, publication_year: 2003)
barry.books << jenngovt

gruen = Author.create(name: 'Sara Gruen')
h204elephants = Book.create(title: 'Water for Elephants', pages: 335, publication_year: 2006)
gruen.books << h204elephants
