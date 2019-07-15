class Author < ApplicationRecord
  validates_presence_of :name

  has_many :book_authors
  has_many :books, through: :book_authors

  def average_num_of_pages
    total_num_of_pages = self.books.pluck(:num_of_pages)
    (total_num_of_pages.sum / total_num_of_pages.length)
  end
end
