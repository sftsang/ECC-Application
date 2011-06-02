class UsersController < ApplicationController
  before_filter :authenticate, :except => [:new, :create]
  before_filter :correct_user, :only => [:edit, :update]
  before_filter :signed_in,    :only => [:new, :create]
  before_filter :admin_user,   :only => :destroy
  before_filter :verify_admin, :only => :full_listing
  before_filter :valid_communities
  
  def index
      
  end  

  def show
    @user = User.find(params[:id] || current_user.id)
    if @user.community_id == 0
      redirect_to full_listing_path 
    else
      @page_title = @user.name
      @community_users = User.where(:community_id => @user.community.id).order(:role_id, :name)
    end
  end

  def new
    @user = User.new
    @page_title = 'Sign up'
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      sign_in @user
      flash[:success] = "Welcome to the ECC App!"
      redirect_to community_path(@user.community_id)
    else
      @page_title = "Sign up"
      @user.password = ""
      @user.password_confirmation = ""
      render 'new'
    end
  end

  def edit
    @page_title = "Edit user"
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      flash[:success] = "Profile updated."
      redirect_to community_path(@user.community_id)
    else
      @page_title = "Edit user"
      render 'edit'
    end
  end

  def destroy
    user = User.find(params[:id])
    if (!user.admin? && user != current_user)
      user.destroy
      flash[:success] = "User destroyed."
      redirect_to users_path
    else
      flash[:error] = "An admin cannot destroy themselves."
      redirect_to users_path
    end
  end
  
  private
  
    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_path) unless current_user?(@user)
    end
    
    def admin_user
      if current_user
        redirect_to(root_path) unless current_user.admin?
      else
        redirect_to(root_path)
      end
    end
    
    def verify_admin
      redirect_to(root_path) if current_user.role_id != 1
    end
    
    def signed_in
      redirect_to(root_path) if signed_in?
    end
    
    def valid_communities
      @communities = Community.where(:status => "Active")
    end
end
