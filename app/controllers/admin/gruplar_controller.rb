class Admin::GruplarController < ApplicationController
  def gruplar
    @admin_grup_list = Group.all
  end

  def create

    @newgroup = Group.new(params.require(:new_group).permit(:group_name))
    @newgroup.save
    redirect_to admingruplar_path
  end

  def destroy

    @del_group = Group.find_by_id(params[:id])
    @del_group.destroy
    redirect_to admingruplar_path
  end
end



# bunu yapmam gereksiz mi oldu, controllers/grouplar_controller aldınta aynı create işlemini yapabiliyor muyduk ?
# örnekte redirect_to @articles yapmış ,ne farkı var ?