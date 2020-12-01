class Api::CheesesController < ApplicationController

  def index
    @cheeses = Cheese.all
    render 'index.json.jb'
  end

  def show
    @cheese = Cheese.find_by(id: params[:id])
    render 'show.json.jb'
  end
end
