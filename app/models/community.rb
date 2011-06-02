# == Schema Information
# Schema version: 20110411142035
#
# Table name: ecc_communities
#
#  id          :integer(4)      not null, primary key
#  location    :string(255)
#  name        :string(255)
#  description :text
#  status      :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class Community < ActiveRecord::Base
  has_many :users
  has_many :scavengers, :through => :community_scavengers
  attr_accessible :location, :status, :name, :description, :status
  
  validates :location, :presence => true
  validates :status, :presence => true
  
  # accepts_nested_attributes_for :community_scavenger, :allow_destroy => true
end
