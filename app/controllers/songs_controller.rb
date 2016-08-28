class SongsController < ApplicationController

  def index
    @songs = Song.order(created_at: :desc)
  end

  def destroy
    if Song.find(params[:id]).destroy
      render json: {succes: "Successfully deleted song."}
    else
      render json: {error: "Could not delete song."}
    end
  end

end
