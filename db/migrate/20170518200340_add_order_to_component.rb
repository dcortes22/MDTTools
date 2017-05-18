class AddOrderToComponent < ActiveRecord::Migration[5.0]
  def change
    add_column :components, :order, :integer
  end
end
