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
  has_many :scavenger_entries
  has_many :scavengers, :through => :scavenger_entries
  attr_accessible :location, :status, :name, :description, :status
  
  validates :location, :presence => true
  validates :status, :presence => true
  
  accepts_nested_attributes_for :scavenger_entries, :allow_destroy => true
end
