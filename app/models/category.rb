class Category < ApplicationRecord
    has_many :books
    has_many :pods
end
