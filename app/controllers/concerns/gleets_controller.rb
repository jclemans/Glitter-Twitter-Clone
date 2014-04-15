class GleetsController < ApplicationController

  def index
    @gleets = Gleet.all
  end

  def create
    @gleet = Gleet.create(gleet_params)

  end

  private
  def gleet_params
    params.require(:gleet).permit(:content, :user_id)
  end
end
