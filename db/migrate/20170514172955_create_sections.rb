class CreateSections < ActiveRecord::Migration[5.0]
  def change
    create_table :sections do |t|
      t.integer :order
      t.string :name
      t.string :media_url
      t.string :config
      t.references :sample, foreign_key: true

      t.timestamps
    end
  end
end
