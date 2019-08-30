# As a user,
# When I visit '/books'
# Then I see each book in the system including the book's:
#   - title
#   - number of pages
#   - publication year
#   - the name of each author that wrote the book

require 'rails_helper'

RSpec.describe 'Book Index Page', type: :feature do
  before :each do
    @lumley = Author.create(name: 'Brian Lumley')
    @necropscope = Book.create(title: 'The Necroscope', pages: 400, publication_year: 1986)
    @deadspeak = Book.create(title: 'Necroscope IV: Deadspeak', pages: 400, publication_year: 1990)
    AuthorBook.create(author_id: @lumley.id, book_id: @necropscope.id)
  end

  it 'sees details for each book on the book index' do
    visit '/books'

    expect(page).to have_content(@necropscope.title)
    expect(page).to have_content(@necropscope.pages)
    expect(page).to have_content(@necropscope.publication_year)
    expect(page).to have_content(@necropscope.authors.name)
  end
end
