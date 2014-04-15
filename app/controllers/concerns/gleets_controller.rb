class GleetsController < ApplicationController

  def index
    @gleets = Gleet.all
  end

  def new
    @gleet = Gleet.new
  end

  def create
    @gleet = Gleet.new(gleet_params)
    if @gleet.save
      respond_to do |format|
        format.html { redirect_to root_path }
        format.js
      end
    else
      render 'new'
    end
  end

  def show
    @gleet = Gleet.find(params[:id])
  end

  private
  def gleet_params
    params.require(:gleet).permit(:content, :user_id)
  end
end
