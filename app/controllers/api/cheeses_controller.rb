class Api::CheesesController < ApplicationController

  def index
    @cheeses = Cheese.all
    render 'index.json.jb'
  end
end
