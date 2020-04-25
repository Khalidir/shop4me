class PerfumesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @perfumes = Perfume.all
    if params[:query].present?
      @perfumes = Perfume.where("name ILIKE ?", "%#{params[:query]}%")
    else
      @perfumes = Perfume.all
    end
  end

  def show
    @perfume = Perfume.find(params[:id])
  end
end

