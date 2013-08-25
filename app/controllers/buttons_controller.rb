class ButtonsController < ApplicationController
  def new
  	@button = Button.new
  end

  def create
  	@button = Button.new(params[:button])
  	if @button.save
  		redirect_to root_url
  	else
  		render 'new'
  	end
  end

  def edit
  	@button = Button.find(params[:id])
  end

  def update
    @button = Button.find(params[:id])

	if @button.update_attributes(params[:button])
		redirect_to root_url
	else
		render 'edit'
	end
  end

  def destroy
  	@button = Button.find(params[:id])
  	@button.destroy
  	redirect_to root_url
  end
end
