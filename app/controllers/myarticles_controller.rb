class MyarticlesController < ApplicationController
  def index
	@articles = Myarticle.all
  end
end
