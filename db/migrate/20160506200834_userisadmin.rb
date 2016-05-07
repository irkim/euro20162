class Userisadmin < ActiveRecord::Migration
  def change
    change_table :users do |t|
    t.column :is_admin, :Integer
      end
  end
end
