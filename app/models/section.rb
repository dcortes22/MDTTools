class Section < ApplicationRecord
  belongs_to :sample
  belongs_to :component
  belongs_to :type

  has_and_belongs_to_many :plataforms
end
