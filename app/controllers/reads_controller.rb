class ReadsController < ApplicationController

def update
  link = Link.find(params[:id])
  link.update(read: true)
end

end
