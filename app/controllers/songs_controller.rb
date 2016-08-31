class SongsController < ApplicationController

  def index
    @songs = Song.order(created_at: :desc)
  end

  def new
    @song = Song.new
    @artist = Artist.find(params[:artist_id])
  end

  def create

    # @song = Song.new(song_params)
    #   if @song.save
    #     format.html { redirect_to @artist, notice: 'Song was successfully created.' }
    #     format.json { render :show, status: :ok, location: @song }
    #   else
    #     format.html { render :edit }
    #     format.json { render json: @song.errors, status: :unprocessable_entity }
    #   end
    end

  def destroy
    if Song.find(params[:id]).destroy
      render json: {succes: "Successfully deleted song."}
    else
      render json: {error: "Could not delete song."}
    end
  end

  private
  def song_params
    params.require(:song).permit(:title, :artist_id)
  end
end
