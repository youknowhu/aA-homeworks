# First, create a Toy model and build a polymorphic belongs_to association on toyable

class Toy < ApplicationRecord
  validates :name, uniqueness: { scope: [:toyable] }
  belongs_to :toyable, polymorphic: true
end
