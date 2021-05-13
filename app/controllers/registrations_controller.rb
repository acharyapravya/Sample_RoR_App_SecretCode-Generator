class RegistrationsController < Devise::RegistrationsController
   
  def new
    super
  end

  def create
    @user = User.new(user_params)
    secret_code_id = params[:secret_code][:secret_code_id]
    if @user.save
      @user.assign_code(secret_code_id) if secret_code_id
			redirect_to root_path, notice: 'User has been successfully created'
		else
			render 'new'
		end	
  end

  def update
    super
  end

  def user_params
    params.require(:user).permit(:first_name,:last_name,:email,:password,:password_confirmation, )
  end

end 