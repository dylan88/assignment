class Admin::PagesController < ApplicationController

  before_filter :authorize

  # GET /pages
  def index
    @pages = Page.all

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  # GET /pages/1
  def show
    @page = Page.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
    end
  end

  # GET /pages/new
  def new
    @page = Page.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  # GET /page/1/edit
  def edit
    @page = Page.find(params[:id])
  end

  # POST /page
  def create
    @page = Page.new(page_params)
    respond_to do |format|
      if @page.save
        format.html { redirect_to admin_pages_url, notice: 'Page was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  
  # PUT /pages/1
  def update
    @page = Page.find(params[:id])

    respond_to do |format|
      if @page.update_attributes(page_params)
        format.html { redirect_to admin_pages_url, notice: 'Page was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  # DELETE /pages/1
  def destroy
    @page = Page.find(params[:id])
    @page.destroy

    respond_to do |format|
      format.html { redirect_to admin_pages_url }
    end
  end
  
  private

      def page_params
        params.require(:page).permit(:title, :body,:images_ids=>[])
      end
end

