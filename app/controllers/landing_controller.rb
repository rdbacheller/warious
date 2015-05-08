class LandingController < ApplicationController

  def index
    posts = Post.order('created_at DESC');
    @postOne = posts[0];
    @postTwo = posts[1];
    @postThree = posts[2];
    @postFour = posts[3];
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
