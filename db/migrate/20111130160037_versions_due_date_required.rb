class VersionsDueDateRequired < ActiveRecord::Migration
  def self.up
    add_column :versions, :requires_due_date, :boolean, :default => false
  end

  def self.down
    remove_column :versions, :requires_due_date
  end
end
