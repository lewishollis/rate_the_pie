class RatingsController < ApplicationController
  def new
    @rating = Rating.new
  end

  def create
    @rating = Rating.new(rating_params)
    if @rating.save
      redirect_to @rating.cake
    else
      render 'new'
    end
  end

  private

  def rating_params
    params.require(:rating).permit(:user_id, :cake_id, :price_rating, :taste_rating, :overall_rating, :comment)
  end
end
