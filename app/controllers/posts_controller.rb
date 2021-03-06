class PostsController < ApplicationController
  def index
    @menuItems = [['../feed/index', 'Feed'], ['../feed/expanded' ,'Expanded'], ['../feed/forbidden', 'Forbidden']];
    @posts = Post.all.order("updated_at DESC")
  end

  def show
    @menuItems = [['../feed/index', 'Feed'], ['../feed/expanded' ,'Expanded'], ['../feed/forbidden', 'Forbidden']];
    @post = Post.find_by :id => params[:id]
  end

  def new
    @menuItems = [['../feed/index', 'Feed'], ['../feed/expanded' ,'Expanded'], ['../feed/forbidden', 'Forbidden']];
  end

  def edit
    @menuItems = [['../feed/index', 'Feed'], ['../feed/expanded' ,'Expanded'], ['../feed/forbidden', 'Forbidden']];
  end

  def delete
    @menuItems = [['../feed/index', 'Feed'], ['../feed/expanded' ,'Expanded'], ['../feed/forbidden', 'Forbidden']];
  end
end
