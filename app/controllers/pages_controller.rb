class PagesController < ApplicationController
  def index
    @pages = Page.all
  end
  
  def show
    begin
      @page = Page.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      redirect_to root_path
      return
    end
    @images_ids = JSON.parse @page.images_ids
    respond_to do |format|
      format.html # show.html.erb
    end
  end
end
