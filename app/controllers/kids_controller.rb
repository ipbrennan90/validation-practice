class KidsController < ApplicationController
  before_action :set_kid, only: [:show, :edit, :update]

  def index
    @kids=Kid.all
  end

  def new
    @kid=Kid.new
  end

  def create
    @kid= Kid.new(kid_params)
    if @kid.save
      flash[:notice] = "Kid was successfully created"
      redirect_to kid_path(@kid)
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @kid.update(kid_params)
      redirect_to @kid
      flash[:notice] = "Kid was successfully updated"
    else
      render :edit
    end
  end

  def destroy
    kid=Kid.find(params[:id])
    if kid.destroy
      flash[:notice] = "Kid was destroyed"
    end
  end

  private

  def set_kid
    @kid=Kid.find(params[:id])
  end

  def kid_params
    params.require(:kid).permit(:name, :favorite_toy, :age)
  end
  
end
