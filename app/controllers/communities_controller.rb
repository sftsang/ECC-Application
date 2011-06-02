class CommunitiesController < ApplicationController
  before_filter :authenticate
  before_filter :verify_admin, :only => :show
  before_filter :valid_communities
  
  def index
    @user = User.find(current_user.id)
    community_id = @user.community_id
    if community_id == 0
      redirect_to full_listing_path
    else
      @page_title = @user.name
      @community = Community.find(community_id)
      @team = @community.users.order(:role_id, :name)
    end
  end
  
  def show
    @list_community = User.where(:community_id => params[:id]) if params[:id]
    @communities = Community.find_all_by_status('Active', :include => :users)
    
    @registered_users = 0
    for community in @communities
      @registered_users += community.users.count
    end
  end
  
  def create
    @communities = Community.create( params[:community] )
  end
    
  def full_listing
    @list_community = User.where(:community_id => params[:id]) if params[:id]
    @communities = Community.find_all_by_status('Active', :include => :users)
    
    @registered_users = 0
    for community in @communities
      @registered_users += community.users.count
    end
  end
  
  private
  
  def verify_admin
    redirect_to(communities_path) if current_user.role_id != 1
  end
  
  def valid_communities
    @communities = Community.where(:status => "Active")
  end
end