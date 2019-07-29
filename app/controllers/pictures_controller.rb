class PicturesController < ApplicationController
  def new
    @picture = Picture.new
  end

  def create
    @picture = Picture.new(picture_params)
    if @picture.save
        redirect_to new_picture_path, notice: "Pictureを作成しました！"
      else
        render 'new'
      end
  end

  private

  def picture_params
    params.require(:picture).permit(:title, :content, :image_pict, :image_cache)
  end
end
