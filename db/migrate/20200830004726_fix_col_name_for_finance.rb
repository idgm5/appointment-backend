class FixColNameForFinance < ActiveRecord::Migration[6.0]
  def self.up
    rename_column :bikes, :finane, :finance
  end

  def self.down
    # rename back if you need or do something else or do nothing
  end
end
