class LandingController < ApplicationController

  def index
    # Needs to implement error-handling and content checking/validation

    posts = Post.reverse('created_at DESC');
    blank = Post.new(title: 'No Valid Article. . .', blurb: "This article doesn't really exist. . .", body: "This article doesn't really exist", picture: 'tile.jpg');

    @postOne    = blank;
    @postTwo    = blank;
    @postThree  = blank;
    @postFour   = blank;

    if(!posts.nil?)
      @postOne    = posts.pop();
    end
    if(!posts.nil?)
      @postTwo    = posts.pop();
    end
    if(!posts.nil?)
      @postThree  = posts.pop();
    end
    if(!posts.nil?)
      @postFour   = posts.pop();
    end

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
