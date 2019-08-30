class Author < ApplicationRecord
  has_many :author_books
  has_many :books, through: :author_books

  validates_presence_of :name

  def page_average
    total_pages = self.books.sum{ |book| book.pages }
    total_pages / self.books.count
  end
end
