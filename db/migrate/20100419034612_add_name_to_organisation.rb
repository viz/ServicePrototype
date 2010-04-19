class AddNameToOrganisation < ActiveRecord::Migration
  def self.up
    add_column :organisations, :name, :string
  end

  def self.down
    remove_column :organisations, :name
  end
end
