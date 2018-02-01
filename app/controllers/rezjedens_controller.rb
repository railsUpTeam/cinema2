class RezjedensController < ApplicationController
  def index
    @rezjedens = Rezjeden.all
  end
  def new
    @rezjeden = Rezjeden.new
  end

  def edit
  @rezjeden = Rezjeden.find(params[:id])
  end

  def update
  @rezjeden = Rezjeden.find(params[:id])
 
    if @rezjeden.update(rezjeden_params)
      redirect_to @rezjeden
    else
      render 'edit'
    end
  end

  def show
    @rezjeden = Rezjeden.find(params[:id])
  end

  def create
    @rezjeden = Rezjeden.new(rezjeden_params)
 
    if @rezjeden.save
      redirect_to @rezjeden
    else
      render 'new'
    end
    
    #redirect_to @rezjeden
  end

  private
  def rezjeden_params
    params.require(:rezjeden).permit(:title, :text)
  end
end


