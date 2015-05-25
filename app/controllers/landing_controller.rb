class LandingController < ApplicationController

  def index
    # Needs to implement error-handling and content checking/validation

    #posts = Post.order('created_at DESC');

    #@postOne = posts[0];
    #@postTwo = posts[1];
    #@postThree = posts[2];
    #@postFour = posts[3];
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

  def postTitle (title)
    arr = title.split.each_slice(2).map{|a|a.join ' '}

    return title
  end
end
