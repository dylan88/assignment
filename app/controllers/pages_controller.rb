class PagesController < ApplicationController
  def index
    @pages = Page.all
  end
  
  def show
    @page = Page.find(params[:id])
    @images_ids = JSON.parse @page.images_ids
    respond_to do |format|
      format.html # show.html.erb
    end
  end
end
