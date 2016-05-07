class Groups < ActiveRecord::Migration
  def change
    create_table :groups do |t|

      t.timestamps null: false
      t.column :group_name, :string


    end
    Group.create :group_name => 'A Grubu'
    Group.create :group_name => 'B Grubu'
    Group.create :group_name => 'C Grubu'
    Group.create :group_name => 'D Grubu'
    Group.create :group_name => 'E Grubu'
    Group.create :group_name => 'F Grubu'
  end
end
