class Public::TripsController < ApplicationController

  # 空のインスタンスを生成
  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.new(trip_params)
    @trip.user_id = current_user.id
    if @trip.save
    redirect_to trips_path
    else
    render "new"
    end
  end

  def index
  end

  # 投稿データのストロングパラメータ
  private

  def trip_params
    params.require(:trip).permit(:title, :image, :body, :country, :price)
  end
end
