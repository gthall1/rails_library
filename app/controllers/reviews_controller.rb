class ReviewsController < ApplicationController
  def index

  end

  def show

  end

  def new

  end

  def create
    @book = Book.find(params[:book_id])

    @review = Review.new(review_params)

    @review.book = @book

    if @review.save
      flash[:notice] = "Review has been added!"
      redirect_to book_path(@book)
    else
      flash[:notice] = "Please select an item in the list."
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :body)
  end
end




