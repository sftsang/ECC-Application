class Scavenger < ActiveRecord::Base
  has_many :scavenger_entries
  has_many :communities, :through => :scavenger_entries
end
