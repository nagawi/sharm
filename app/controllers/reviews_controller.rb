class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def show
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.save!
    redirect_to  :action => 'index'
  rescue => e
    render :'new'
  end

  def review_params
    params.require(:review).permit(:title,:note,:value,:product_id,:user_id)
  end
end
