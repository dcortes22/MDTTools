class AddColorToSample < ActiveRecord::Migration[5.0]
  def change
    add_column :samples, :color, :string
  end
end
