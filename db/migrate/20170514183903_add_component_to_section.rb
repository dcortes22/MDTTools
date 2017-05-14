class AddComponentToSection < ActiveRecord::Migration[5.0]
  def change
    add_reference :sections, :component, foreign_key: true
  end
end
