class LinksController < ApplicationController
  before_filter :authorize

  def index
    @link = Link.new
    @links = Link.all
  end

  def create
    link = Link.new(link_params)
    if link.save
      redirect_to '/'
    else
      flash[:notice] = "Link not valid format"
      redirect_to '/'
    end
  end

  def edit
    @link = Link.find(params[:id])
  end

  def update
    link = Link.find(params[:id])
    if link.update(link_params)
      redirect_to '/'
    else
      flash[:notice] = "Link not valid format"
      render :edit
    end
  end

  private
  def link_params
    params.require(:link).permit(:url, :title, :read)
  end
end
