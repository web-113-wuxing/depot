class AddFenleiToProduct < ActiveRecord::Migration
  def self.up
    add_column :products, :fenlei, :string
  end

  def self.down
    remove_column :products, :fenlei
  end
end
