class RezczterysController < ApplicationController
  def index
    @rezczterys = Rezcztery.all
  end
  def new
    @rezcztery = Rezcztery.new
  end

  def edit
  @rezcztery = Rezcztery.find(params[:id])
  end

  def update
  @rezcztery = Rezcztery.find(params[:id])
 
    if @rezcztery.update(rezcztery_params)
      redirect_to @rezcztery
    else
      render 'edit'
    end
  end

  def show
    @rezcztery = Rezcztery.find(params[:id])
  end

  def create
    @rezcztery = Rezcztery.new(rezcztery_params)
 
    if @rezcztery.save
      redirect_to @rezcztery
    else
      render 'new'
    end
    
    #redirect_to @rezcztery
  end

  private
  def rezcztery_params
    params.require(:rezcztery).permit(:title, :text)
  end
end



