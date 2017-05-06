class Admin::ContactController < ApplicationController

  before_filter :authorize

  def index
    @contacts = Contact.all
  end
  
  def show
  end
end
