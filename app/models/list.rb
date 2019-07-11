class List < ApplicationRecord
  belongs_to :user, polymorphic: true
  has_many :items
end
