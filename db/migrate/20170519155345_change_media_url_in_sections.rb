class ChangeMediaUrlInSections < ActiveRecord::Migration[5.0]
  def change
    change_column :sections, :media_url, :text
    change_column :sections, :config, :text
  end
end
