class ReztrzysController < ApplicationController
  def index
    @reztrzys = Reztrzy.all
  end
  def new
    @reztrzy = Reztrzy.new
  end

  def edit
  @reztrzy = Reztrzy.find(params[:id])
  end

  def update
  @reztrzy = Reztrzy.find(params[:id])
 
    if @reztrzy.update(reztrzy_params)
      redirect_to @reztrzy
    else
      render 'edit'
    end
  end

  def show
    @reztrzy = Reztrzy.find(params[:id])
  end

  def create
    @reztrzy = Reztrzy.new(reztrzy_params)
 
    if @reztrzy.save
      redirect_to @reztrzy
    else
      render 'new'
    end
    
    #redirect_to @reztrzy
  end

  private
  def reztrzy_params
    params.require(:reztrzy).permit(:title, :text)
  end
end


