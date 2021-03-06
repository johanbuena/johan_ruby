class UsersController < ApplicationController
    def all
        @users = User.all
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)

        if @user.save
            redirect_to all_subscribers_path
        else
            render :new
        end
    end

    def show
        @user = User.find(params[:id])
    end

    def edit
        @user = User.find(params[:id])  
    end

    def update
        @user = User.find(params[:id])

        if @user.update(user_params)
            redirect_to all_subscribers_path
        else
            render :edit
        end
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
        redirect_to all_subscribers_path
    end

    private
    # def set_user
    #     @user = User.find(params[:id])
    # end
    
    def user_params
        params.require(:user).permit(:firstname, :lastname, :email)
    end
end