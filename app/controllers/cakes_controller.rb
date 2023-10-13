class CakesController < ApplicationController
  def index
    @cakes = Cake.all
  end

  def show
    @cake = Cake.find(params[:id])
  end

  def new
    @cake = Cake.new
  end

  def create
    @cake = Cake.new(cake_params)
    if @cake.save
      redirect_to @cake
    else
      render 'new'
    end
  end

  private

  def cake_params
    params.require(:cake).permit(:name, :description, :image, :price, :taste, :overall_rating)
  end
end
