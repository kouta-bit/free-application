class Home < ApplicationRecord
  def calculation
    Home.all.sum(:time)
  end
  
  def sum_money
    Home.all.sum(:amount_money)
  end
 
end
