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


end
