class RezdwasController < ApplicationController
  def index
    @rezdwas = Rezdwa.all
  end
  def new
    @rezdwa = Rezdwa.new
  end

  def edit
  @rezdwa = Rezdwa.find(params[:id])
  end

  def update
  @rezdwa = Rezdwa.find(params[:id])
 
    if @rezdwa.update(rezdwa_params)
      redirect_to @rezdwa
    else
      render 'edit'
    end
  end

  def show
    @rezdwa = Rezdwa.find(params[:id])
  end

  def create
    @rezdwa = Rezdwa.new(rezdwa_params)
 
    if @rezdwa.save
      redirect_to @rezdwa
    else
      render 'new'
    end
    
    #redirect_to @rezdwa
  end

  private
  def rezdwa_params
    params.require(:rezdwa).permit(:title, :text)
  end
end



