class AuthorBook < ApplicationRecord
  belongs_to :author
  belongs_to :book

  validate_presence_of :author_id, :book_id
end
