class UserPostLikesController < ApplicationController
  before_action :set_user_post_like, only: [:show, :edit, :update, :destroy]

  # GET /user_post_likes
  # GET /user_post_likes.json
  def index
    @user_post_likes = UserPostLike.all
  end

  # GET /user_post_likes/1
  # GET /user_post_likes/1.json
  def show
  end

  # GET /user_post_likes/new
  def new
    @user_post_like = UserPostLike.new
  end

  # GET /user_post_likes/1/edit
  def edit
  end

  # POST /user_post_likes
  # POST /user_post_likes.json
  def create
    @user_post_like = UserPostLike.new(user_post_like_params)

    respond_to do |format|
      if @user_post_like.save
        format.html { redirect_to @user_post_like, notice: 'User post like was successfully created.' }
        format.json { render :show, status: :created, location: @user_post_like }
      else
        format.html { render :new }
        format.json { render json: @user_post_like.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_post_likes/1
  # PATCH/PUT /user_post_likes/1.json
  def update
    respond_to do |format|
      if @user_post_like.update(user_post_like_params)
        format.html { redirect_to @user_post_like, notice: 'User post like was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_post_like }
      else
        format.html { render :edit }
        format.json { render json: @user_post_like.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_post_likes/1
  # DELETE /user_post_likes/1.json
  def destroy
    @user_post_like.destroy
    respond_to do |format|
      format.html { redirect_to user_post_likes_url, notice: 'User post like was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_post_like
      @user_post_like = UserPostLike.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_post_like_params
      params[:user_post_like]
    end
end
