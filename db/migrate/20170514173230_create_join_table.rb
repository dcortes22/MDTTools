class CreateJoinTable < ActiveRecord::Migration[5.0]
  def change
    create_join_table :sections, :components do |t|
      t.index [:section_id, :component_id]
    end
  end
end
