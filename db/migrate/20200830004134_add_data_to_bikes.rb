class AddDataToBikes < ActiveRecord::Migration[6.0]
  def change
    add_column :bikes, :description, :text
    add_column :bikes, :finane, :integer
    add_column :bikes, :option, :integer
    add_column :bikes, :total, :integer
    add_column :bikes, :duration, :integer
    add_column :bikes, :picture, :string
  end
end
