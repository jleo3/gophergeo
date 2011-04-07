require 'simplegeo'
require 'json'
require 'search_options'

class LocationsController < ApplicationController

  def index
    @search_type_options = create_search_types_options
    @location = Location.new
    @search_category_options = []
  end

  def show
    @location = Location.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @location }
    end
  end

  def new
    @location = Location.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @location }
    end
  end

  def edit
    @location = Location.find(params[:id])
  end

  def create
    search_type = match_search_type = params[:search_type]
    search_category = match_search_category = params[:search_category]
    search_subcategory = match_search_subcategory = params[:search_subcategory]
    search_options = { :search_type => search_type,
                       :search_category => search_category,
                       :search_subcategory => search_subcategory }
    json_places = get_simple_geo_info(params[:location]["lat"], 
                                      params[:location]["long"], 
                                      search_options )
    @locations = Location.save_places(json_places, search_options)
    respond_to do |format|
      if @locations
        format.html { render(:show_locations, :notice => 'Location was successfully created.') }
        format.xml  { render :xml => @location, :status => :created, :location => @location }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @location.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @location = Location.find(params[:id])

    respond_to do |format|
      if @location.update_attributes(params[:location])
        format.html { redirect_to(@location, :notice => 'Location was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @location.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @location = Location.find(params[:id])
    @location.destroy

    respond_to do |format|
      format.html { redirect_to(locations_url) }
      format.xml  { head :ok }
    end
  end

  private
  def get_simple_geo_info(lat, long, search_options)
    authorize_simplegeo
    search_type = convert_for_url(search_options[:search_type])
    search_category = convert_for_url(search_options[:search_category])
    search_subcategory = convert_for_url(search_options[:search_subcategory])
    options = { 'num' => 100, 'radius' => 25, 'type' => search_type,
                'category' => search_category, 'subcategory' => search_subcategory }
    simplegeo_places = SimpleGeo::Client.get_places(lat.to_f, long.to_f, options)
    JSON.parse(simplegeo_places.to_json)["features"]
  end

  def convert_for_url(option)
    return unless option
    option = option.gsub(/_/, "%20")
    option.gsub(/and/, "&")
  end

  def create_search_types_options
    [ SearchOption.new('none', "Choose Type"),
      SearchOption.new('entertainment', "Entertainment"),
      SearchOption.new('food_and_drink', "Food & Drink"),
      SearchOption.new('retail_goods', "Retail Goods"), 
      SearchOption.new('services', "Services") ]
  end
end
