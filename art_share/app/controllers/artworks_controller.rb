class ArtworksController < ApplicationController

  def index
    # GET /index
    artworks = Artwork.owned_and_shared(params[:user_id])
    # debugger
    render json: artworks
  end

  def create
    artwork = Artwork.new(artwork_params)
    if artwork.save
      render json: artwork
    else
      render json: artwork.errors.full_messages, status: :unprocessable_entity
    end
  end

  def show
    # GET /artworks/:id
    @artwork = Artwork.find(params[:id])
    render json: @artwork
  end

  def update
    # PATCH /users/:id
    @artwork = Artwork.find(params[:id])
    if @artwork.update(artwork_params)
      redirect_to artwork_url(@artwork)
    else
      render json: @artwork.errors.full_messages, status: 422
    end
  end

  def destroy
    @artwork = Artwork.find(params[:id])
    @artwork.destroy

    # render json: @artwork
    redirect_to artwork_url

    # redirect DOES delete the artwork, but gives us funky page
  end

  private

  def artwork_params
    params.require(:artwork).permit(:title, :image_url, :artist_id)
  end

end