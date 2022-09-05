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

  def edit
	@article = Myarticle.find(params[:id])
  end

  def update
	@article = Myarticle.find(params[:id])

	if @article.update(myarticle_params)
		redirect_to @article
	else
		render :new, status: :unprocessable_entity
	end
  end

  def destroy
	@article = Article.find(params[:id])
	@article.destroy
   
	redirect_to root_path, status: :see_other
     end

  private
  	def myarticle_params
		params.require(:myarticle).permit(:title, :body)
	end
end
