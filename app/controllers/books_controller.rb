class BooksController < ApplicationController
  def index
    @book = Book.all
  end

  def show
    @book = Book.find(params[:id])
    @review = Review.new
  end

  def new
    @new_book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to books_path
    else
      render :new
    end
  end

  private

  def book_params
    params.require(:book).permit(:title, :author, :year, :description, :category)
  end

end



