class PhotosController < ApplicationController

    def index
    end

    def new
    end

    def create
        photo = Photo.new
        
        photo.title = params[:photo][:title]
        photo.image_url =  params[:photo][:image_url]

        photo.save
    end   
end
