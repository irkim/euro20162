class Admin::TakimlarController < ApplicationController

  before_action :require_admin

  def index
    @team_list = Team.all
    @group_list = Group.all
  end

  def new
    @team= Team.new
  end

  def destroy

    @del_team = Team.find_by_id(params[:id])
    @del_team.destroy
    redirect_to admin_path
  end

  def create

    @newteam=Team.new(takim_params)
    if @newteam.save
    redirect_to admin_path
    end
  end
  def takim_params
    params.require(:new_team).permit(:team_name,:Group_id,:team_flag)
  end


end
