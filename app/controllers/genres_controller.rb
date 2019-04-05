class GenresController < ApplicationController

  def show
    @genre = Genre.find_by(params[:id])
  end

  def new
    @genre = Genre.new
  end

  def edit
      @genre = Genre.find_by(params[:id])
  end

  def create
  end

  def update
    @genre = Genre.find_by(params[:id])
    @genre.update(params.require(:genre).permit(:name))
  end

end
