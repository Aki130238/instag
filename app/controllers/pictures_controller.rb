class PicturesController < ApplicationController
  def index
    @pictures = Picture.all
  end

  def new
    @picture = Picture.new
  end

  def create
    @picture = Picture.new(picture_params)
    if @picture.save
        redirect_to pictures_path, notice: "Pictureを作成しました！"
      else
        render 'new'
      end
  end

  def show
    @picture = Picture.find(params[:id])
  end

  private

  def picture_params
    params.require(:picture).permit(:title, :content, :image_pict, :image_cache)
  end
end
