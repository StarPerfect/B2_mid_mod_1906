class Book < ApplicationRecord
  has_many :author_books
  has_many :authors, through: :author_books

  validate_presence_of :title, :pages, :publication_year
end
