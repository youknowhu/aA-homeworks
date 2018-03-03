class BooksController < ApplicationController
  def index
    @books = Book.all# your code here
    ren der :index
  end

  def new
    render :new
  end

  def create
    book = Book.new(book_params)

    if book.save
      redirect_to "http://localhost:3000/books"
    else
      render json: book.errors.full_messages, status: :unrpocessable_entity
      render :new
    end
  end

  def destroy
    book = Book.find_by(id: params[:id])

    if book.destroy
      redirect_to "http://localhost:3000/books"
    else
      render json: "Can't destroy this book!"
    end

  end

  private
  def book_params
    params.require(:book).permit(:title, :author)
  end
end
