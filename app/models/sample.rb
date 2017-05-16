class Sample < ApplicationRecord
  include Tokenable
  has_many :sections
end
