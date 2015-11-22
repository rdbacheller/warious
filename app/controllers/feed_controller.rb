class FeedController < ApplicationController
  def index
    @pageTitle = '> Feed - Index'
    @menuItems = [['../feed/expanded' ,'Feed +Expanded'], ['../feed/forbidden', 'Forbidden']]

    @posts = Post.all.order 'created_at DESC'
    @series = Series.all.order 'title ASC'
    @authors = []

    @posts.each do |foo|
      @authors << foo.author
    end

    @authors.uniq

    @counter = 1
  end

  def expanded
    @pageTitle = '> Feed - Expanded'
    @menuItems = [['../feed/index' ,'Feed'], ['../feed/forbidden', 'Forbidden']]
  end

  def forbidden
    @pageTitle = '> Feed - Forbidden'
    @menuItems = [['../feed/index', 'Feed'], ['../feed/expanded' ,'Expanded']]
  end
end
