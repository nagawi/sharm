class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def show
  end

  def new
    @review = Review.new
    # idを受け取る
    @product = Product.find(params[:id])
  end

  def create
    # 投稿者はcurrent_userで固定
    @review = current_user.reviews.new(review_params)
    @review.save!
    redirect_to  :action => 'index'
  rescue => e
    render :'new'
  end

  def review_params
    params.require(:review).permit(:title,:note,:value,:product_id,:user_id)
  end
end
