class TestsController < ApplicationController


  def index
  	@test = Test.all
  end

  def show
  	@test = Test.find(params[:id])
  end

  def edit
  	#Julia
  end

  def update
  	#Julia
  end

  def new
  	#Jake
  end

  def create
  	#Jake
  end


end
