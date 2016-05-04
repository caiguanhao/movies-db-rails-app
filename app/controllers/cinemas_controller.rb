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

  helper_method :price_tags

  def price_tags(prices_json)
    prices = JSON.parse(prices_json)
    tags = ''
    Timetable::PRICE_PROVIDERS.each do |name, display_name|
      value = prices[name.to_s]
      if value
        tags << view_context.content_tag(:div, class: 'movie-price') do
          (display_name + '：' + view_context.content_tag(:span, value, class: 'movie-price-number')).html_safe
        end
      end
    end
    tags.html_safe
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
