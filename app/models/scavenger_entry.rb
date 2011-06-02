class ScavengerEntry < ActiveRecord::Base
  belongs_to :community
  belongs_to :scavenger
  
  has_attached_file :simage, :styles => { :large => "600x600>", :thumb => "100x100>" }
end
