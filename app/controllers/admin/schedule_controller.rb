class Admin::ScheduleController < ApplicationController
  before_action :require_admin

  def schedule
    @schedule_list=Schedule.all
  end


  def create

    @newschedule=Schedule.new(schedule_params)
    if @newschedule.save
      redirect_to adminschedule_path
    end
  end

  def schedule_params
    params.require(:newschedule).permit(:match_day,:home_team_id,:away_team_id)
  end

  def destroy

    @del_schedule= Schedule.find_by_id(params[:id])
    @del_schedule.destroy
    redirect_to adminschedule_path
  end


end
