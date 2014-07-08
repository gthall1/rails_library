class BooksController < ApplicationController
  def index
    @book = Book.all
  end

  def show
    @book = Book.find(params[:id])
    @review = Review.new
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:notice] = "Book has been added to the database!"
      redirect_to books_path
    else
      flash[:notice] = "Please fill out this field."
      render :new
    end
  end

  private

  def book_params
    params.require(:book).permit(:title, :author, :year, :description, :category)
  end

end




