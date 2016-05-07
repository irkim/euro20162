class AddOrganizationNames < ActiveRecord::Migration
  def change
    Organization.create :organization_name =>'Boyner Holding'
    Organization.create :organization_name =>'Ay Marka'
    Organization.create :organization_name =>'Hopi'
    Organization.create :organization_name =>'Altınyıldız'
    Organization.create :organization_name =>'Beymen'
    Organization.create :organization_name =>'Boyner Mağazacılık'

  end
end
