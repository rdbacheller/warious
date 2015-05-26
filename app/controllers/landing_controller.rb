class LandingController < ApplicationController

  def index
    # content checking/validation

    # Pulls all of the posts from the Post table
    posts = Post.order('created_at DESC');

    # Creates a temporary blank post
    blank = Post.new(title: 'Non-Existent Article',blurb: 'This is filler text',body: 'This is filler for a non-existent article', picture: 'tile.jpg', url: 'nonexistent');
    # Initializes the instance variables to be blank by default, this comes in handy for error-checking
    @postOne = blank
    @postTwo = blank
    @postThree = blank
    @postFour = blank

    # Tests to see if the entry is blank (nil), if it isn't then the proper post is set; this works on a post-by-post basis,
    # and is ugly but highly effective
    if !posts[0].nil?
      if !posts[1].nil?
        if !posts[2].nil?
          if !posts[3].nil?
            @postFour = posts[3]
          end
          @postThree = posts[2]
        end
        @postTwo = posts[1]
      end
      @postOne = posts[0]
      return
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
