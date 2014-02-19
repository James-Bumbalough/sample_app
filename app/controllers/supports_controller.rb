class SupportsController < ApplicationController
  def new
    # id is required to deal with form
    @support = Support.new(:id => 1)
  end
 
  def create
    @support = Support.new(params[:support])
    if @support.human == "4"
        if @support.save
          redirect_to('/', :notice => "Your message was successfully sent.")
        else
          flash.now[:alert] = "You must fill all fields."
          render 'new'
        end
    else
        flash.now[:alert] = "You Answered the spam question wrong:"
        render 'new'
    end
  end
end