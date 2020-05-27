class BooksController < ApplicationController

    def index
        @books = Book.all
    end

    def new
        @book = Book.new
    end

    def create
        @book = Book.new(bok_params)
        binding.pry
        if @book.save
            redirect_to pod_path
        else
            render "new"
        end
    end

    def show
        if !@book
            redirect_to pods_path
        end
    end

    def edit
        if !@book
            redirect_to pods_path
        end
    end

    def update
        if @book
            @book.update(book_params)
            if @book.errors.any?
                render "edit"
            else
                redirect_to pods_path
            end
        else
            render "edit"
        end
    end

    def destroy
        @book.destroy
        redirect_to pods_path
    end
    


  private

  def set_book
    @book = Book.find_by_id(params[:id])
  end

  def book_params
    params.require(:book).permit(:title, :author, :author_bio, :book_summary)
  end

end
