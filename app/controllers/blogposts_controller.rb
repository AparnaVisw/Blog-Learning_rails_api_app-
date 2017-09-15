class BlogpostsController < ApplicationController
  before_action :set_blogpost, only: [:show, :update, :destroy]

  # GET /blogposts
  def index
    @blogposts = Blogpost.all

    render json: @blogposts
  end

  # GET /blogposts/1
  def show
    render json: @blogpost
  end

  # POST /blogposts
  def create
    @blogpost = Blogpost.new(blogpost_params)

    if @blogpost.save
      render json: @blogpost, status: :created, location: @blogpost
    else
      render json: @blogpost.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /blogposts/1
  def update
    if @blogpost.update(blogpost_params)
      render json: @blogpost
    else
      render json: @blogpost.errors, status: :unprocessable_entity
    end
  end

  # DELETE /blogposts/1
  def destroy
    @blogpost.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blogpost
      @blogpost = Blogpost.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def blogpost_params
      params.require(:blogpost).permit(:blog_post, :body_content, :blogger_id)
    end
end
