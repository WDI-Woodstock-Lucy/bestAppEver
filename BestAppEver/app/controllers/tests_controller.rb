class TestsController < ApplicationController


  def index
  	@test = Test.all
  end

  def show
  	@test = Test.find(params[:id])
  end

  def edit
    @test = Test.find( params[:id] )
  end

  def update
  	@test = Test.find( params[:id] )
    test.update(test_params)
  end

  def new
  	@test = Test.new
  end

  def create
  	test = Test.create( test_params )
  	redirect_to '/tests/#{ test.id }'
  end

  def destroy
  	Test.destroy(params[:id])
  	redirect_to '/tests'
  end

  def test_params
    params.require(:test).permit(:name)
  end


end
