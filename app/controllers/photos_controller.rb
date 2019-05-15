class PhotosController < ApplicationController
  before_action :authenticate_user!

  def create
    @place = Place.find(params[:place_id])
    @place.photos.create(photo_params.merge(user: current_user))
    # @photo = Photo.new
    # @photo.user_id = current_user.id
    # @photo.place_id = @place.id
    # @photo.picture = params[:picture]
    # @photo.caption = params[:caption]
    # @photo.save!
    # puts @photo.errors.inspect
    redirect_to place_path(@place)
  end

  private

  def photo_params
    params.require(:photo).permit(:picture, :caption)
  end

  def extension_white_list
  %w(jpg jpeg gif png)
  end
end
