class BooksController < ApplicationController

    def index
        @books = Book.all
    end

    def new
        @book = Book.new
    end

    def create
        @book = Book.new
    end

    def edit
    end

    def update
    end

    def destroy
    end
    
end
