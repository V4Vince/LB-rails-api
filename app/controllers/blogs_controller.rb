class BlogsController < OpenReadController
  before_action :set_blog, only: [:show, :update, :destroy]

  # GET /blogs
  # GET /blogs.json
  def index
    @blogs = Blog.all

    render json: @blogs
  end

  # GET /blogs/1
  # GET /blogs/1.json
  # def show
  #   render json: @blog
  # end

  # POST /blogs
  # POST /blogs.json
  def create
    @blog = current_user.blogs.build(blog_params)

    if @blog.save
      render json: @blog, status: :created, location: @blog
    else
      render json: @blog.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /blogs/1
  # PATCH/PUT /blogs/1.json
  def update
    @blog = Blog.find(params[:id])

    if @blog.update(blog_params)
      head :no_content
    else
      render json: @blog.errors, status: :unprocessable_entity
    end
  end

  # DELETE /blogs/1
  # DELETE /blogs/1.json
  def destroy
    @blog.destroy

    head :no_content
  end

  private

    def set_blog
      @blog = Blog.find(params[:id])
    end

    def blog_params
      # Add like buttons
      # Add extra content fields for links
      params.require(:blog).permit(:title, :content)
    end
end
