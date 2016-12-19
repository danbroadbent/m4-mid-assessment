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
      flash[:failure] = "Link not saved"
      redirect_to '/'
    end
  end

  private
  def link_params
    params.require(:link).permit(:url, :title)
  end
end
