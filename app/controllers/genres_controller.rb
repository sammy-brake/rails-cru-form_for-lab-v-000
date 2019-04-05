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

end
