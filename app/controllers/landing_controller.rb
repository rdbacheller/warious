class LandingController < ApplicationController

  def index
    #posts = Post.order('created_at DESC');
    @postOne = '1';#posts[0];
    @postTwo = '2';#posts[1];
    @postThree = '3';#posts[2];
    @postFour = '4';#posts[3];
  end

  def pad
  end

  def spot
  end

  def restricted
  end

  def forbidden
  end

  def portal
  end

  def easteregg
  end
end
