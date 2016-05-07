class Takimler < ActiveRecord::Migration
  def change
    create_table :teams do |t|

      t.timestamps null: false
      t.column :team_name, :string
      t.column :team_flag, :binary
      t.references :Group

    end

    Team.create :team_name=>'Arnavutluk', :Group_id => 1
    Team.create :team_name =>'Fransa', :Group_id => 1
    Team.create :team_name  => 'Romanya', :Group_id => 1
    Team.create :team_name  => 'İsviçre', :Group_id => 1

    Team.create :team_name  => 'İngiltere', :Group_id => 2
    Team.create :team_name  => 'Rusya', :Group_id => 2
    Team.create :team_name  => 'Slovakya', :Group_id => 2
    Team.create :team_name  => 'Galler', :Group_id => 2
  end
end
