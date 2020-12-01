class Api::CheesesController < ApplicationController

  def index
    @cheeses = Cheese.all
    render 'index.json.jb'
  end

  def create
    @cheese = Cheese.new(
      name:"Cheddar", 
      price:15, 
      description: "Nice, orange color")
    @cheese.save
    render 'show.json.jb'
  end

  def show
    @cheese = Cheese.find_by(id: params[:id])
    render 'show.json.jb'
  end
end
