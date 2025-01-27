# As a user,
# When I visit the Book Index Page,
#   Then I see each author's name is a link
# When I click the link
#   Then I am taken to an Author Show Page where I see the author with that id including the author's:
#   - name
#   - the title of each book they have written
#   - the average number of pages for all of their books
require 'rails_helper'

RSpec.describe 'Author Show Page', type: :feature do
  before :each do
    @lumley = Author.create(name: 'Brian Lumley')
    @necropscope = Book.create(title: 'The Necroscope', pages: 400, publication_year: 1986)
    @deadspeak = Book.create(title: 'Necroscope IV: Deadspeak', pages: 400, publication_year: 1990)
    # @lumley_book_1 = AuthorBook.create(author_id: @lumley.id, book_id: @necropscope.id)
    # @lumley_book_4 = AuthorBook.create(author_id: @lumley.id, book_id: @deadspeak.id)
    @lumley.books << @necropscope
    @lumley.books << @deadspeak
  end

  it 'can click author name from books page to see author details' do
    visit '/books'

    within "#book-#{@deadspeak.id}" do
      click_link 'Brian Lumley'
    end

    expect(current_path).to eq("/authors/#{@lumley.id}")
    expect(page).to have_content(@lumley.name)
    expect(page).to have_content(@necropscope.title)
    expect(page).to have_content(@deadspeak.title)
    expect(page).to have_content(@lumley.page_average)
  end
end
