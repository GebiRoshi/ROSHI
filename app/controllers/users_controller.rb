class UsersController < ApplicationController
	def new
	  @user = User.new
	end

	def create
	  @user = User.new(user_params)
	  if @user.save
	    redirect_to root_url, :notice => "Signed up!"
	  else
	    render :new
	  end
	end

	def index
		@my_klasses = Klass.where(user_id:current_user.id)
	end

	def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'Account was successfully updated.' }
        format.json { render :index, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

	private

	  def user_params
      params.require(:user).permit( :email, :password, :password_confirmation, :name, :last_name, :picture, :mobile, :birthdate)
      end
end
