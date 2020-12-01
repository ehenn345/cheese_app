class Api::CheesesController < ApplicationController

  def index
    @cheeses = Cheese.all
    render 'index.json.jb'
  end

  def create
    @cheese = Cheese.new(
      name: params[:name], 
      price: params[:price],
      description: params[:description])
    @cheese.save
    render 'show.json.jb'
  end

  def show
    @cheese = Cheese.find_by(id: params[:id])
    render 'show.json.jb'
  end
end
