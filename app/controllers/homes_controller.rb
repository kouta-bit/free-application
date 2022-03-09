class HomesController < ApplicationController
  def home
    @homes = Home.all
    @money = Home.all.sum(:amount_money)
    @time = Home.all.sum(:time)
  end

  def register 
    @home = Home.new
  end
  
  def create
    @home = Home.new(homes_params)
    if @home.save
      redirect_to homes_home_path , notice: 'complete' 
    else 
      render :register
    end  
  end
  
  private
    def homes_params
      params.require(:home).permit(:text, :salary, :transfer, :time, :amount_time, :amount_money)
    end

end
