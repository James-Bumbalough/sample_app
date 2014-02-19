class StaticPagesController < ApplicationController
  
  def home
    if signed_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end

  def resume
  end

  def art
  end

  def contact
  end

  def bible_study
  end

  def help
  end

  def about
  end

  def tumblr
  end

end
