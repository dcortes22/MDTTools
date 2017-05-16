class AddTypeToSection < ActiveRecord::Migration[5.0]
  def change
    add_reference :sections, :type, foreign_key: true
  end
end
