class Author < ApplicationRecord
  has_many :author_books
  has_many :books, through: :author_books

  validate_presence_of :name
end
