class UserbetController < ApplicationController
  def index
    @schedule_list = Schedule.all
    @user_bet_list = Bet.find_by_user_id(session[:user_id])
  end

  def create
    @user_bet = Bet.new(user_params)
    @user_bet.save
  end


  private
  def bet_params
    params.require(:user_bet).permit(:user_id, :schedule_id, :home_score_bet, :away_score_bet)
  end
end
