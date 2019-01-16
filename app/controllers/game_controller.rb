class GameController < ApplicationController
  def home
    @number = params[:number]
# need logic to ensure no string is inputed-
    if @number.nil?
      @display = ""
    elsif @number.to_i.to_s !=@number
      @display ="Please enter number not charactors"
      flash.now[:error] = "Try Again"
    elsif @number.to_i.even?
      @display = "Your number is even"
    else
      @display = "You number is odd"
    end
  end
end
