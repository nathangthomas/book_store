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

    describe 'displays all author names as links' do
      it "takes me to an Author Show Page where I see the author's name, title of each book, and average number of pages for all of their books" do
      clink_link @tom.name
      expect current_path to_eq(book_path(author.id))
      expect(page).to have_content("Author: #{@tom.name}")
      expect(page).to have_content("Books:")
      expect(page.all('li')[0]).to have_content(@book_1.title)
      expect(page.all('li')[1]).to have_content(@book_3.title)

      expect(page).to have_content("Average Number of Pages: #{@book_1.num
        / @book_3.num_of_pages}")
      end
    end
  end
end
