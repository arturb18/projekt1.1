class AddUserToAdmins < ActiveRecord::Migration
  def self.up
    add_column :admins, :user, :boolean, :default => false
  end

  def self.down
    remove_column :admins, :user
  end
end