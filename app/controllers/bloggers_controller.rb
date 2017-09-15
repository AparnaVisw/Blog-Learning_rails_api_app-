class BloggersController < ApplicationController
  before_action :set_blogger, only: [:show, :update, :destroy]

  # GET /bloggers
  def index
    @bloggers = Blogger.all

    render json: @bloggers
  end

  # GET /bloggers/1
  def show
    render json: @blogger
  end

  # POST /bloggers
  def create
    @blogger = Blogger.new(blogger_params)

    if @blogger.save
      render json: @blogger, status: :created, location: @blogger
    else
      render json: @blogger.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bloggers/1
  def update
    if @blogger.update(blogger_params)
      render json: @blogger
    else
      render json: @blogger.errors, status: :unprocessable_entity
    end
  end

  # DELETE /bloggers/1
  def destroy
    @blogger.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blogger
      @blogger = Blogger.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def blogger_params
      params.require(:blogger).permit(:gmail, :password, :oauth_token)
    end
end
