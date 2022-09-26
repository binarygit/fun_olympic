class SearchesController < ApplicationController
  def create
    if params[:search] == "michael"
      redirect_to Post.first
    elsif params[:search] == "brazil vs germany"
      redirect_to Post.second
    else
      redirect_to Post.third
    end
  end
end
