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

  private
  def link_params
    params.require(:link).permit(:url, :title)
  end
end
