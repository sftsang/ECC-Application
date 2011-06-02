class CommunityScavenger < ActiveRecord::Base
  belongs_to :community
  belongs_to :scavenger
  
  has_attached_file :simage, :styles => { :large => "500x500>", :thumb => "100x100>" }
end
