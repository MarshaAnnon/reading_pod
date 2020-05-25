class Book < ApplicationRecord
    has_many :book_pods
    has_many :pods, through: :book_pods
    belongs_to :category
end
