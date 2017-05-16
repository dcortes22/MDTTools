class Section < ApplicationRecord
  belongs_to :sample
  belongs_to :component
  belongs_to :type
end
