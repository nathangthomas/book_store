require 'rails_helper'

RSpec.describe 'books index page' do
  describe 'as a visitor' do
    before(:each) do
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

      visit '/books'
    end

    it 'I can see each book including title, number of pages, publication year, and name of author/s that wrote the book.' do
      within "#book-#{@book_1.id}" do
        expect(page).to have_content("Title: #{@book_1.title}")
        expect(page).to have_content("Number of Pages: #{@book_1.num_of_pages}")
        expect(page).to have_content("Publication Year: #{@book_1.publication_year}")
        expect(page).to have_content("Authors:")
        expect(page.all('li')[0]).to have_content(@tom.name)
        expect(page.all('li')[1]).to have_content(@wile.name)
      end
    end
  end
end
