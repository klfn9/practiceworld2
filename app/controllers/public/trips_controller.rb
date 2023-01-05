class Public::TripsController < ApplicationController

  # 空のインスタンスを生成
  def new
    @trip = Trip.new
  end

  def index
  end

end
