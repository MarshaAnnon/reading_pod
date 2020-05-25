class BookPod < ApplicationRecord
    belongs_to :user 
    belongs_to :pod
end
