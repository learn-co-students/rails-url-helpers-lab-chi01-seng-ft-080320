class AddDefaultValueToActive < ActiveRecord::Migration[5.0]
  def up
    change_column :students, :active, :boolean, default: false
  end
  

end
