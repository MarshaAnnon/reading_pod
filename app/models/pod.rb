class Pod < ApplicationRecord

    has_many :book_pods
    has_many :books, through: :book_pods
    has_many :user_pods
    has_many :users, through: :user_pods
    belongs_to :category
end

