class Admin::MembershipsController < ApplicationController
  before_action :set_membership, only: [:show, :edit, :update, :destroy]
  before_filter :authorize
  # GET /admin/memberships
  # GET /admin/memberships.json
  def index
    @memberships = Membership.all
  end

  # GET /admin/memberships/1
  # GET /admin/memberships/1.json
  def show
    @membership = Membership.find(params[:id])
  end

  # GET /admin/memberships/new
  def new
    @membership = Membership.new
  end

  # GET /admin/memberships/1/edit
  def edit
  end

  # POST /admin/memberships
  def create
    @membership = Membership.new(membership_params)

    respond_to do |format|
      if @membership.save
        format.html { redirect_to admin_memberships_url, notice: 'Membership was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /admin/memberships/1
  # PATCH/PUT /admin/memberships/1.json
  def update
    respond_to do |format|
      if @membership.update(membership_params)
        format.html { redirect_to admin_memberships_url, notice: 'Membership was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /admin/memberships/1
  # DELETE /admin/memberships/1.json
  def destroy
    @membership.destroy
    respond_to do |format|
      format.html { redirect_to admin_memberships_url, notice: 'Membership was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_membership
      @membership = Membership.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def membership_params
      params.require(:membership).permit(:title, :description, :price)
    end
end
