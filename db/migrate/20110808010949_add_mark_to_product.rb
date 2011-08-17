class AddMarkToProduct < ActiveRecord::Migration
  def self.up
    add_column :products, :mark, :integer
  end

  def self.down
    remove_column :products, :mark
  end
end
