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

	def show
		@user = User.find(params[:id])
	end

	def edit
	end

	def update
	@user = User.find(params[:id])
	    respond_to do |format|
	      if @user.update(user_params)
	        format.html { redirect_to @user, notice: 'Account was successfully updated.' }
	        format.json { render :show, status: :ok, location: @user }
	      else
	        format.html { render :show }
	        format.json { render json: @user.errors, status: :unprocessable_entity }
	      	end
    	end
  	end

  	def bookings
  		@klass = Klass.all
  		@my_bookings = Booking.where(user_id:current_user)
  	end

	private

	  def user_params
      params.require(:user).permit( :email, :password, :password_confirmation, :name, :last_name, :about_me, :picture, :mobile, :birthdate)
      end
end
