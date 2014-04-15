class GleetsController < ApplicationController

  def index
    @gleets = Gleet.all
  end

  def new
    @gleet = Gleet.new
  end

  def create
    @gleet = Gleet.create(gleet_params)
    redirect_to root_path
  end

  def show
    @gleet = Gleet.find(params[:id])
  end

  private
  def gleet_params
    params.require(:gleet).permit(:content, :user_id)
  end
end
