class Station < ApplicationRecord
  acts_as_mappable
  scope :get_nearest, ->(number) { uniq(&:name).first(number).pluck(:name) }
end