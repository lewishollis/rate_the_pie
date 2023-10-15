class CakesController < ApplicationController
  def index
    if params[:query].present?
      @cakes = Cake.search_by_name_and_description(params[:query])
    else
      @cakes = Cake.all
    end
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
