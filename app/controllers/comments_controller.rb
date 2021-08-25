class CommentsController < ApplicationController
  def create
    
    if params[:car_id].present?
      @car = Car.find(params[:car_id])
      @car = Car.find(params[:car_id])
      @comment  = @car.comments.create(comment_params)
      redirect_to car_path(@car)
    elsif params[:bike_id].present?
      @bike = Bike.find(params[:bike_id])
      comment  = @bike.comments.create(comment_params)
      redirect_to bike_path(@bike)
    else
      @auto = Auto.find(params[:auto_id])
      comment  = @auto.comments.create(comment_params)
      redirect_to auto_path(@auto)
    end


    #@bike = Bike.find(params[:bike_id])
   # @comment  = @bike.comments.create(comment_params)
    #redirect_to bike_path(@bike)
  end

  def destroy
    @car = Car.find(params[:car_id])
    @comment = @car.comments.find(params[:id])
    @comment.destroy
    redirect_to car_path(@car)
    
    #@bike = Bike.find(params[:bike_id])
    #@comment = @bike.comments.find(params[:id])
    #@comment.destroy
    #redirect_to bike_path(@bike)

  end
  
  private
    def comment_params
      params.require(:comment).permit(:body)
    end
end
