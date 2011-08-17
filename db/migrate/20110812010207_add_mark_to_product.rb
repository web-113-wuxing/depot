class AddMarkToProduct < ActiveRecord::Migration
  def self.up
    add_column :products, :mark, :integer, :default => 0
  end

  def self.down
    remove_column :products, :mark
  end
end
