require 'rails_helper'

RSpec.describe Author, type: :model do
  describe 'Validations' do
    it {should validate_presence_of :name}
  end

  describe 'Relationships' do
    it {should have_many :book_authors}
    it {should have_many :books}

  end

  # describe 'as a visitor' do
  #   before(:each) do
  #     @tom = Author.create!(name: "Tom")
  #     @jerry = Author.create!(name: "Jerry")
  #     @wile = Author.create!(name: "Wile E. Coyote")
  #     @roadrunner = Author.create!(name: "Road Runner")
  #
  #     @book_1 = Book.create!(title: "The Art of the Chase", num_of_pages: 50, publicaiton_year: "1986")
  #     @book_2 = Book.create!(title: "Traps, Illusions, and Evasion" num_of_pages: 200, publicaiton_year: "1957")
  #     @book_3 = Book.create!(title: "To Chase and to Be Chased", num_of_pages: 100, publicaiton_year: "2000")
  #
  #     @book_1.authors << [@tom, @wile]
  #     @book_2.authors << [@jerry, @roadrunner]
  #     @book_3.aurthors << [@tom, @jerry, @wiley, @roadrunner]
  #   end




  end
