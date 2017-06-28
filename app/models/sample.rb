class Sample < ApplicationRecord
  include Tokenable
  has_many :sections, dependent: :destroy
end
