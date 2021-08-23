class CommentsController < ApplicationController
  def create
    @car = Car.find(params[:car_id])
    if (@car == "car_id")
      @car = Car.find(params[:car_id])
      @comment  = @car.comments.create(comment_params)
      redirect_to car_path(@car)
    else
      @bike = Bike.find(params[:bike_id])
      comment  = @bike.comments.create(comment_params)
      redirect_to bike_path(@bike)
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
