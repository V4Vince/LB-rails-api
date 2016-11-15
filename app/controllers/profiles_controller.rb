class ProfilesController < OpenReadController
  before_action :set_profile, only: [:show, :update, :destroy]

  # GET /profiles
  # GET /profiles.json
  def index
    @profiles = Profile.all

    render json: @profiles
  end

  # GET /profiles/1
  # GET /profiles/1.json
  # def show
  #   render json: @profile
  # end

  # POST /profiles
  # POST /profiles.json
  def create
    #if user already has a profile then throw errors
    if current_user.profile
      render json: @profile, status: :unprocessable_entity
    #if user does not already have profile, then make one
    else
      @profile = current_user.create_profile(profile_params)
      if @profile.save
        render json: @profile, status: :created, location: @profile
      else
        render json: @profile.errors, status: :unprocessable_entity
      end
    end
  end

  # PATCH/PUT /profiles/1
  # PATCH/PUT /profiles/1.json
  def update
    @profile = Profile.find(params[:id])

    if @profile.update(profile_params)
      head :no_content
    else
      render json: @profile.errors, status: :unprocessable_entity
    end
  end

  # DELETE /profiles/1
  # DELETE /profiles/1.json
  def destroy
    @profile.destroy

    head :no_content
  end

  private

    def set_profile
      @profile = Profile.find(params[:id])
    end

    def profile_params
      params.require(:profile).permit(:first_name, :last_name, :birthday, :about_me, :extra1, :extra2, :extra3, :extra4, :extra5)
    end
end
