class ArtistsController < ApplicationController
  helper_method :sort_column, :sort_direction

  def index
    if params[:sort] && params[:direction]
      @artists = Artist.order(params[:sort] + ' ' + params[:direction])
    else
      @artists = Artist.all
    end
  end

  def show
    @artist = Artist.find(params[:id])
  end

  private

  def sort_column
    Artist.column_names.include?(params[:sort]) ? params[:sort] : "name"
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end

  def artist_params
    params.require(:artist).permit(:name, :image)
  end

end
