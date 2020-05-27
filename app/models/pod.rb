class Pod < ApplicationRecord
    has_many :book_pods
    has_many :books, through: :book_pods
    has_many :user_pods
    has_many :users, through: :user_pods
    belongs_to :category, optional: true

    accepts_nested_attributes_for :books, reject_if: proc { |attr| attributes['title'].blank?  }

    #if time write a custom writer
    #def book_attributes=(book_attributes)
    #    binding.pry
    #    @book = self.books.build(book_attributes)
    #    @book.save
    #end

end

