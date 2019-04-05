class ArtistsController < ApplicationController
  # has_many :songs

  def show
    @artist = Artist.find_by(params[:id])
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(params.require(:artist).permit(:name, :bio))
    redirect_to artist_path(@artist)
  end

  def edit 
    @artist = Arist.find_by(params[:id])
  end 

  def update 
  end 
end
