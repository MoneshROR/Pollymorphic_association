class AutosController < ApplicationController
  def index
      @autos = Auto.all  
  end
  
  def show
    @auto = Auto.find(params[:id])
  end
 
  def new
    @auto = Auto.new
  end

  def create
    @auto = Auto.new(auto_params)
    if @auto.save
      redirect_to @auto
    else
        render :new
    end

  end

  def edit
    @auto = Auto.find(params[:id])
  end

  def update
    @auto = Auto.find(params[:id])
    if @auto.update(auto_params)
      redirect_to @auto
    else
      render :edit
    end

  end

  def destroy
    @auto = Auto.find(params[:id])
    @auto.destroy

    redirect_to root_path
  end

  private
    def auto_params
      params.require(:auto).permit(:name, :city, :date)       
    end
end
