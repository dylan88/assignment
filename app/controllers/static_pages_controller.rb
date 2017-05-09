class StaticPagesController < ApplicationController
  def home
    @images_ids = JSON.parse "[\"1\",\"2\",\"3\"]"
  end

  def help
  end
end
