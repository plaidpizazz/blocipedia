class UsersController < ApplicationController

  def show
    @user = User.find_by(id: session[:user_id])
    @wikis = policy_scope(Wiki)
  end

  def downgrade
    @user = User.find_by(id: session[:user_id])
    @wikis = current_user.wikis

    if @user == current_user
      @wikis.unscoped.update_all(private: 'false')
      current_user.update_attribute(:role, 'standard')

      flash[:notice] = "#{current_user.email} your account has been downgraded"
      redirect_to edit_user_registration_path
    end 
  end

end
