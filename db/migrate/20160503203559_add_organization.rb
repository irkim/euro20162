class AddOrganization < ActiveRecord::Migration
  def change
    change_table :organizations do |t|
      t.column :organization_name, :string

    end
  end
end
