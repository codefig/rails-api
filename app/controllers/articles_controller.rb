class ArticlesController < ApplicationController

    def index
        articles = Article.page(params[:page]).per(2)
        puts(Article.count)
        render json: articles
    end

    def show
        puts("Getting the efforts")
        @id = params[:id]
        @article = Article.find(@id)
        puts(@article)
        # render json: @articles
    end
end