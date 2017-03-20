class VideosController < OpenReadController
  before_action :set_video, only: [:show, :update, :destroy]

  # GET /videos
  # GET /videos.json
  def index
    @videos = Video.all
    render json: @videos
  end

  # GET /videos/1
  # GET /videos/1.json
  # def show
  #   render json: @video
  # end

  # POST /videos
  # POST /videos.json
  def create
    @video = current_user.videos.build(video_params)

    if @video.save
      render json: @video, status: :created, location: @video
    else
      render json: @video.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /videos/1
  # PATCH/PUT /videos/1.json
  def update
    @video = Video.find(params[:id])

    if @video.update(video_params)
      head :no_content
    else
      render json: @video.errors, status: :unprocessable_entity
    end
  end

  # DELETE /videos/1
  # DELETE /videos/1.json
  def destroy
    @video.destroy

    head :no_content
  end

  private

    def set_video
      @video = Video.find(params[:id])
    end

    def video_params
      params.require(:video).permit(:title, :video_link, :description)
    end
end
