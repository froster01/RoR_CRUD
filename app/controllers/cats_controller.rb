class CatsController < ApplicationController
  before_action :set_cat, only: [:show, :edit, :update, :destroy]
  ##aattr_accessor :name
  ## new test
  def show
    @cat = Cat.find(params[:id])
  end

  def index
    @cats = Cat.all
  end

  def new
    @cat = Cat.new 
  end

  def create
    @cat = Cat.new(cat_params)
    if @cat.save
      redirect_to root_path
  else
      render :new
    end
  end

  def update
    if @cat.update(cat_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @cat.destroy
    redirect_to root_path
  end

  def edit
    @cat = Cat.find(params[:id])
  end


private

    def cat_params
        params.require(:cat).permit(:name, :species, :colour, :price)
    end

    def set_cat
        @cat = Cat.find(params[:id])
    end
  end
