class SeriesController < ApplicationController
  def index
    @menuItems = [['../feed/index', 'Feed'], ['../feed/expanded' ,'Expanded'], ['../feed/forbidden', 'Forbidden']];

    @series = Series.all.order('title ASC')
  end

  def show
    @menuItems = [['../feed/index', 'Feed'], ['../feed/expanded' ,'Expanded'], ['../feed/forbidden', 'Forbidden']];

    @series = Series.find_by :id => params[:id]
  end

  def new
    @menuItems = [['../feed/index', 'Feed'], ['../feed/expanded' ,'Expanded'], ['../feed/forbidden', 'Forbidden']];
  end

  def create

  end

  def edit
    @menuItems = [['../feed/index', 'Feed'], ['../feed/expanded' ,'Expanded'], ['../feed/forbidden', 'Forbidden']];
  end

  def update

  end

  def delete
    @menuItems = [['../feed/index', 'Feed'], ['../feed/expanded' ,'Expanded'], ['../feed/forbidden', 'Forbidden']];

    @series = Series.find_by :id => params[:id]
  end

  def destroy
    series = Series.find_by :id => params[:id]

    if series.destroy
      redirect_to series_index_url
    else
      redirect_to series_delete_url, :id => series.id
    end
  end
end