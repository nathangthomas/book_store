class Book < ApplicationRecord
  validates_presence_of :title, :num_of_pages, :publication_year

  has_many :book_authors
  has_many :authors, through: :book_authors

end
