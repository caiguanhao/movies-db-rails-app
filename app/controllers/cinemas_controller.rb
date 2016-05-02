class CinemasController < ApplicationController
  before_action :set_cinema, only: [:show, :edit, :update, :destroy]

  before_action :authenticate_admin!, only: [:new, :edit, :create, :update, :destroy]

  # GET /cinemas
  def index
    @cinemas = Cinema.all
  end

  # GET /cinemas/1
  def show
    @dates = @cinema.timetables.select(:date).uniq.where('date >= ?', Date.current).limit(7).pluck(:date)
  end

  # GET /cinemas/new
  def new
    @cinema = Cinema.new
  end

  # GET /cinemas/1/edit
  def edit
  end

  # POST /cinemas
  def create
    @cinema = Cinema.new(cinema_params)

    if @cinema.save
      redirect_to @cinema, notice: '影院已创建。'
    else
      render :new
    end
  end

  # PATCH/PUT /cinemas/1
  def update
    if @cinema.update(cinema_params)
      redirect_to @cinema, notice: '影院已修改。'
    else
      render :edit
    end
  end

  # DELETE /cinemas/1
  def destroy
    @cinema.destroy
    redirect_to cinemas_url, notice: '影院已删除。'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cinema
      @cinema = Cinema.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def cinema_params
      params.require(:cinema).permit(:name, :city, :content, :address, :phone, :business_hours)
    end
end
