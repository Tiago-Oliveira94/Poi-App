class PoisController < ApplicationController
  before_action :authorize, except: [:new, :create]


  def index
    @pois = Poi.all
  end

  def show
    @poi = Poi.find(params[:id])
  end

  def new
    @poi = Poi.new
  end

  def create
    @poi = Poi.new(poi_params)
    if @poi.save
      redirect_to @poi
    else
      render 'new'
    end
  end

  def destroy
    @poi = Poi.find(params[:id])
    @poi.destroy

    redirect_to pois_path
  end

  def new_distance 
  end

  def calculate_distance
    @coordinate_x = params[:x].to_i
    @coordinate_y = params[:y].to_i
    @radius = params[:radius].to_i
    @pois = Poi.all
    @result_pois = [] 
    
    @pois.each do |poi|
      @result = Poi.new.euclidean_distance([@coordinate_x,@coordinate_y], [poi.x,poi.y])
      if @result <= @radius
        @result_pois.push(poi.name)
      end
    end
    render :result_distance
  end

  def result_distance
  end

private

  def poi_params
    params.require(:poi).permit(:name, :x, :y)
  end
end
