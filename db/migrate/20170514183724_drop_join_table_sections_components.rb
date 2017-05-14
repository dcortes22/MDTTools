class DropJoinTableSectionsComponents < ActiveRecord::Migration[5.0]
  def change
    drop_join_table :sections, :components
  end
end
