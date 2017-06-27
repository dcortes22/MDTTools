class CreateJoinTableSectionPlataform < ActiveRecord::Migration[5.0]
  def change
    create_join_table :sections, :plataforms do |t|
      # t.index [:section_id, :plataform_id]
      # t.index [:plataform_id, :section_id]
    end
  end
end
