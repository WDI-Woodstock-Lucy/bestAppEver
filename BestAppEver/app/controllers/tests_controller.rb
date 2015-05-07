class TestsController < ApplicationController


  def index
  	#James
  end
  def show
  	#James
  end

  def edit
    @test = Test.find( params[:id] )
  end

  def update
  	@test = Test.find( params[:id] )
    test.update(test_params)
  end

  def new
  	#Jake
  end
  def create
  	#Jake
  end

  def test_params
    params.require(:test).permit(:name)
  end


end
