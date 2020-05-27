class Pod < ApplicationRecord
    has_many :book_pods
    has_many :books, through: :book_pods
    has_many :user_pods
    has_many :users, through: :user_pods
    belongs_to :category, optional: true

    accepts_nested_attributes_for :books

    #if time write a custom writer

end

