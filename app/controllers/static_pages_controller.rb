class StaticPagesController < ApplicationController
  def home
    if signed_in?
    @link = current_user.links.build if signed_in?
    @feed_items = current_user.feed.paginate(page: params[:page], per_page: params[:per_page] || 15)
    format.js
    end
  end


  def contact
  end
end
