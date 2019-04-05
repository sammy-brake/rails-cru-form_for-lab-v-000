class ArtistsController < ApplicationController
  # has_many :songs

  def show
    @artist = Artist.find_by(params[:id])
  end

  def new
    @artist = Artist.new
  end
end
