require 'spec_helper'

describe Community do
  before(:each) do
    @attr = { :location => "Example Location", :name => "AwesomeCL",
              :description => "Here is a great description of a this great community. We are planning to use the money to build a new park.",
              :status => "Active" }
  end
  
  it "should create a new instance given valid attributes" do
    Community.create!(@attr)
  end
  
  it "should require a location" do
    no_location_community = Community.new(@attr.merge(:location => ""))
    no_location_community.should_not be_valid
  end
  
  it "should require a status" do
    no_status_community = Community.new(@attr.merge(:status => ""))
    no_status_community.should_not be_valid
  end
end
