module Api
  module V1
    class ArticlesController < ApplicationController
      protect_from_forgery with: :null_session
      
      def index
        articles = Article.order('created_at DESC');
        render json: {status: 'SUCCESS', message: 'Articles loaded', data:articles}, status: :ok
      end

      def show
        article = Article.find(params[:id])
        render json: {status: 'SUCCESS', message:'loaded article', data:article}, status: :ok
      end

      def create
        article = Article.new(article_params)
        if article.save
          render json: {status: 'SUCCESS', message:'Article saved', data:article}, status: :ok
        else
          render json: {status: 'SUCCESS', message:'Article not saved', data:article}, status: :unprocessable_entity
        end
      end

      def destroy
        article = Article.find(params[:id])
        article.destroy
        render json: {status: 'SUCCESS', message: 'Article deleted', data:article}, status: :ok
      end

      def update
        article = Article.find(params[:id])
        if article.update_attributes(article_params)
          render json: {status: 'SUCCESS', message: 'Article updated', data:article}, status: :ok
        else
          render json: {status: 'ERROR', message:'Article not updated', data:article}, status: :ok
        end
      end

      private
      def article_params
        params.permit(:title, :body)
      end
    end
  end
end
