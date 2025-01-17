class MatchesController < ApplicationController
  before_action :authenticate_user, only: [:create]

  def index
    @matches = Match.all
    render json: @matches, status: :ok
  end

  def create
    @match = Match.new(
      team_one_player_one: User.find_by(id: params[:team_one_player_one]),
      team_one_player_two: User.find_by(id: params[:team_one_player_two]),
      team_two_player_one: User.find_by(id: params[:team_two_player_one]),
      team_two_player_two: User.find_by(id: params[:team_two_player_two]),
      team_one_score: params[:team_one_score],
      team_two_score: params[:team_two_score],
    )

    if @match.save
      render json: @match, status: :created
    else
      render json: { errors: @match.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @match = Match.find_by(id: params[:id])
    @match.destroy
    render json: { message: "Match destroyed successfully" }
  end
end
