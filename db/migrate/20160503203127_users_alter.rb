class UsersAlter < ActiveRecord::Migration
  def change

    change_table :users do |t|
      t.column :first_name, :string
      t.column :last_name, :string
      t.column :email, :string
      t.column :password_digest, :string
      t.column :organization_id, :integer

    end
  end
end
