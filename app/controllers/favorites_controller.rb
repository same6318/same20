class FavoritesController < ApplicationController

  def create
    #current_user.favorites.create(blog_id: params[:blog_id])
    @favorite = current_user.favorites.build(blog_id: params[:blog_id])
    @favorite.save
    respond_to do |format|
      format.js { render :index }
      #format.html { redirect_to blogs_path }
    end
    #redirect_to blogs_path
  end

  def destroy
    #current_user.favorites.find_by(id: params[:id]).destroy
    @favorite = current_user.favorites.find_by(id: params[:id])
    @favorite.destroy
      respond_to do |format|
        format.js { render :index }
        #format.html { redirect_to blogs_path }
      end
      #redirect_to blogs_path
  end


end
