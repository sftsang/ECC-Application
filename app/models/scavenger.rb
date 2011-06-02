class Scavenger < ActiveRecord::Base
  has_many :community_scavengers
  has_many :communities, :through => :community_scavengers
end
