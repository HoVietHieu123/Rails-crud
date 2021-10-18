module Admin
  class UsersController < ApplicationController
    def index
      @users = User.all
    end

    def new
      @user_form = UserForm.new
    end

    def create
      @user_form = UserForm.new(user_params)
      if @user_form.save
        redirect_to admin_users_path
      else
        render :new
      end
    end

    private

    def user_params
      params.require(UserForm.model_name.element).permit(UserForm::FORM_FIELDS)
    end
  end
end
