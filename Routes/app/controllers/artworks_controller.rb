class ArtworksController < ApplicationController
    def index
        @artworks = Artwork.find_by(artist_id: params[:user_id])
        render json: @artworks
    end

    def update
        @artwork = Artwork.find(params[:id])
        if @artwork.update(artwork_params)
            render json: @artwork
        else  
            render json: @artwork.errors.full_messages, status: 422
        end
    end

    def show
        @artwork = Artwork.find(params[:id])
        render json: @artwork 
    end

    def destroy
        @artwork = Artwork.find(params[:id])
        @artwork.destroy 
        redirect_to artworks_url
    end

    def create
        @artwork = Artwork.new(artwork_params)
        if @artwork.save
            render json: @artwork
        else  
            render json: @artwork.errors.full_messages, status: 422
        end
    end

    private
    def artwork_params
        params.require(:artwork).permit(:image_url, :title, :artist_id)
    end
end