class MatchesController < ApplicationController
  def index
    @matches = Match.all
    render :index
  end

  def create
    @match = Match.create(
      team_one_player_one: params[:team_one_player_one],
      team_one_player_two: params[:team_one_player_two],
      team_two_player_one: params[:team_two_player_one],
      team_two_player_two: params[:team_two_player_two],
      team_one_score: params[:team_one_score],
      team_two_score: params[:team_two_score],
    )
    render :show
  end
end
