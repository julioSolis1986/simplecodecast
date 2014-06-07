class UsersController < InheritedResources::Base
  def index
    @users = User.paginate(:page => params[:page], :per_page => 10)
  end
end
