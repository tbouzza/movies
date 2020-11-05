class RolesController < ApplicationController

  def create
    # 1. find the movie from the params
    @movie = Movie.find(params[:movie_id])

    # 2. create a new instance for role
    @role = Role.new(role_params)

    # 3. associate the role with the movie
    @role.movie = @movie

    if @role.save
      redirect_to @movie
    # else
    #   redirect_back
    end
  end


  private

  def role_params
    params.require(:role).permit(:title, :actor_id)
  end

end
