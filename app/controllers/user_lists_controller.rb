class UserListsController < ApplicationController
  before_action :set_user_list, only: %i[ show update destroy ]

  # GET /user_lists
  # GET /user_lists.json
  def index
    @user_lists = UserList.all
  end

  # GET /user_lists/1
  # GET /user_lists/1.json
  def show
  end

  # POST /user_lists
  # POST /user_lists.json
  def create
    @user_list = UserList.new(user_list_params)

    if @user_list.save
      render :show, status: :created, location: @user_list
    else
      render json: @user_list.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_lists/1
  # PATCH/PUT /user_lists/1.json
  def update
    if @user_list.update(user_list_params)
      render :show, status: :ok, location: @user_list
    else
      render json: @user_list.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_lists/1
  # DELETE /user_lists/1.json
  def destroy
    @user_list.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_list
      @user_list = UserList.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_list_params
      params.require(:user_list).permit(:user_id, :list_id)
    end
end
