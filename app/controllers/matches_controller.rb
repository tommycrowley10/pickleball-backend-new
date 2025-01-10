class MatchesController < ApplicationController
  def index
    @matches = Match.all
    render :index
  end
end
