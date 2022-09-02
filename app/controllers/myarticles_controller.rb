class MyarticlesController < ApplicationController
  def index
	@articles = Myarticle.all
  end
  def show
	@article = Myarticle.find(params[:id])
  end
end
