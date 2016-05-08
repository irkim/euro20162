class AddScheduleBets < ActiveRecord::Migration
  def change
    change_table :bets do |b|
      b.column :schedule_id , :integer
    end
  end
end
