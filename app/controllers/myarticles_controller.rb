class MyarticlesController < ApplicationController
  def index
	@articles = Myarticle.all
  end

  def show
	@article = Myarticle.find(params[:id])
  end

  def new
	@article = Myarticle.new
  end

  def create
	@article = Myarticle.new(myarticle_params)

	if @article.save
		redirect_to @article
	else 
		render :new, status: :unprocessable_entity
	end
  end

  private
  	def myarticle_params
		params.require(:myarticle).permit(:title, :body)
	end
end
