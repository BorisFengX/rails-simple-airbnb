class FlatsController < ApplicationController
  require "json"
  require "open-uri"
  # require "rest-client"
  # before_action :supplier_params
  before_action :set_flat, only: [:show, :edit, :update, :destroy]


  def filter
    # raise
    @flats = Flat.where("name LIKE '%#{params[:name]}%'")
    # ("name LIKE '#{params[:name]}'")
  end

  def index
    @flats = Flat.all
  end

  def show
    # @reviews = Review.where("flat_id": @flat.id)
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    if @flat.save
      redirect_to flat_path(@flat)
    else
      render :new
    end
    # @flat.save
    # redirect_to flats_path(@flat)
  end

  def edit
  end

  def update
    @flat.update(flat_params)
    if @flat.update(flat_params)
      redirect_to flat_path(@flat)
    else
      render :edit
    end
  end

  def destroy
    @flat.delete
    redirect_to flats_path
  end

  def supplier
    @suppliers = Supplier.all
    # @results = []
    # @suppliers.each do |i|
    #   result = {name:"", short_name:"", distance_dgcfs:"", duration_dgcfs:"", distance_yantian:"", duration_yantian:"", distance_xmcfs:"", duration_xmcfs:"", distance_xiamen:"", duration_xiamen:""}
    #   result[:name] = i.name
    #   result[:short_name] = i.short_name

    #   location_supplier = i.location_supplier
    #   location_dgcfs = i.location_dgcfs
    #   location_xmcfs = i.location_xmcfs
    #   location_yantian = i.location_yantian
    #   location_xiamen = i.location_xiamen

    #   url_route_dgcfs = "http://restapi.amap.com/v3/direction/driving?key=6504f14e7ffd897acb25caf682f90186&origin=#{location_supplier}&destination=#{location_dgcfs}&originid=&destinationid=&extensions=base&strategy=0&waypoints=&avoidpolygons=&avoidroad="
    #   url_route_yantian = "http://restapi.amap.com/v3/direction/driving?key=6504f14e7ffd897acb25caf682f90186&origin=#{location_supplier}&destination=#{location_yantian}&originid=&destinationid=&extensions=base&strategy=0&waypoints=&avoidpolygons=&avoidroad="
    #   url_route_xmcfs = "http://restapi.amap.com/v3/direction/driving?key=6504f14e7ffd897acb25caf682f90186&origin=#{location_supplier}&destination=#{location_xmcfs}&originid=&destinationid=&extensions=base&strategy=0&waypoints=&avoidpolygons=&avoidroad="
    #   url_route_xiamen = "http://restapi.amap.com/v3/direction/driving?key=6504f14e7ffd897acb25caf682f90186&origin=#{location_supplier}&destination=#{location_xiamen}&originid=&destinationid=&extensions=base&strategy=0&waypoints=&avoidpolygons=&avoidroad="

    #   res_dgcfs = JSON.parse(open(url_route_dgcfs).read)
    #   res_yantian = JSON.parse(open(url_route_yantian).read)
    #   res_xmcfs = JSON.parse(open(url_route_xmcfs).read)
    #   res_xiamen = JSON.parse(open(url_route_xiamen).read)


    #   result[:distance_dgcfs] = res_dgcfs["route"]["paths"][0]["distance"]
    #   result[:distance_yantian] = res_yantian["route"]["paths"][0]["distance"]
    #   result[:distance_xmcfs] = res_xmcfs["route"]["paths"][0]["distance"]
    #   result[:distance_xiamen] = res_xiamen["route"]["paths"][0]["distance"]

    #   result[:duration_dgcfs] = res_dgcfs["route"]["paths"][0]["duration"]
    #   result[:duration_yantian] = res_yantian["route"]["paths"][0]["duration"]
    #   result[:duration_xmcfs] = res_xmcfs["route"]["paths"][0]["duration"]
    #   result[:duration_xiamen] = res_xiamen["route"]["paths"][0]["duration"]

    #   @results << result

    #   i.distance_dgcfs = res_dgcfs["route"]["paths"][0]["distance"]
    #   i.distance_yantian = res_yantian["route"]["paths"][0]["distance"]
    #   i.distance_xmcfs = res_xmcfs["route"]["paths"][0]["distance"]
    #   i.distance_xiamen = res_xiamen["route"]["paths"][0]["distance"]

    #   i.duration_dgcfs = res_dgcfs["route"]["paths"][0]["duration"]
    #   i.duration_yantian = res_yantian["route"]["paths"][0]["duration"]
    #   i.duration_xmcfs = res_xmcfs["route"]["paths"][0]["duration"]
    #   i.duration_xiamen = res_xiamen["route"]["paths"][0]["duration"]

    #   i.save
    # end

  end

  private

  def flat_params

    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests)
  end

  # def supplier_params
  #   params.require(:supplier).permit(:name, :short_name, :location_supplier, :location_dgcfs, :location_yantian, :location_xmcfs, :location_xiamen, :distance_dgcfs, :duration_dgcfs, :distance_yantian, :duration_yantian, :distance_xmcfs, :duration_xmcfs, :distance_xiamen, :duration_xiamen)
  # end

  def set_flat
    @flat = Flat.find(params[:id])
  end




end
