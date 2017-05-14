class Section < ApplicationRecord
  belongs_to :sample
  belongs_to :component
end
