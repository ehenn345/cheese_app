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

  def update
    @cheese = Cheese.find_by(id: params[:id])
    @cheese.name = params[:name] || @cheese.name
    @cheese.price = params[:price] || @cheese.price
    @cheese.description = params[:description] || @cheese.description
    @cheese.save
    render 'show.json.jb'
  end

  def destroy
    cheese = Cheese.find_by(id: params[:id])
    cheese.destroy
    render json: {message: "Cheese has been destroyed."}
  end
end
