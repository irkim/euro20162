class GruplarController < ApplicationController
  def index
    @group_list = Group.all
    @team_list = Team.all
  end
end