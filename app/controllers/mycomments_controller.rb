class MycommentsController < ApplicationController
	def create
		@article = Myarticle.find(params[:article_id])
		@comment = @article.mycomments.create(mycomment_params)
		redirect_to myarticle_path(@article)
	end

	private
		def mycomment_params
			params.require(:mycomment).permit(:commenter, :body)
		end
end
