class ArtistsController < ApplicationController
  helper_method :sort_column, :sort_direction



  def index
    @artists = Artist.order(params[:sort] + ' ' + params[:direction])
  end

  def show
    @artist = Artist.find(params[:id])
  end

  private
  def sort_column
    params[:sort] || "name"
  end

  def sort_direction
    params[:direction] || "asc"
  end

end
