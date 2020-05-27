class BookPod < ApplicationRecord
    belongs_to :book 
    belongs_to :pod
end
