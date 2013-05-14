class TweetsController < ApplicationController
  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tweet }
    end
  end
end
