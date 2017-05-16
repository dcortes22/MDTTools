class AddTokenToSample < ActiveRecord::Migration[5.0]
  def change
    add_column :samples, :token, :string
  end
end
