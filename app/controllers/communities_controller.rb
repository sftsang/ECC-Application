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
  
  def upload
    @user = User.find(current_user.id)
    community_id = @user.community_id
    @community = Community.find(community_id)
    @team = @community.users.order(:role_id, :name)
    @scavenger = Scavenger.all(:order => "order_num")
  end
  
  def new
    raise "new"
  end
  
  def edit
    raise "edit"
  end
  
  def create
    raise "create"
    
  end
  
  def update
    se = params[:community][:scavenger_entry]
    @entry = ScavengerEntry.where("community_id = '#{se[:community_id]}' AND scavenger_id = '#{se[:scavenger_id]}'").first
    
    # if there is aready a photo for that category replace it, otherwise create a new one
    if @entry
      is_saved = @entry.update_attributes(se)
    else
      @entry = ScavengerEntry.new(se)
      is_saved = @entry.save
    end
    
    if is_saved
      flash[:success] = "Image Uploaded."
      redirect_to '/communities/upload'
    else
      render 'upload'
    end
    
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