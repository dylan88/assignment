class MembershipsController < ApplicationController
  def index
    @memberships = Membership.all
    @images_ids = JSON.parse "[\"1\",\"2\",\"3\"]"
  end

  def show
    @membership = Membership.find(params[:id])
  end
end
