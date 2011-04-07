require 'simplegeo'
require 'fastercsv'
require 'app/models/location'

# authenticate against simplegeo
#
# read csv file for lat and long
#
# for each lat and long
#   search each category
#   parse results
#   if results == 100
#     keep parsing until results < 100
#   

class DataStasher
  def self.stash
    @attributes = FasterCSV.read("doc/categories.csv")
    @locations = FasterCSV.read("doc/zip_code_lat_long_co_ct_dc.csv")
  end

  def self.create_queries
    Struct.new("Location", :city, :state, :latitutde, :longitude)
    Struct.new("Attribute", :type, :category, :subcategory)
    queries = Array.new
    @locations.each do |loc|
      location = Struct::Location.new(loc[0], loc[1], loc[2], loc[3])
      puts "Executing all queries for #{location.city}, #{location.state}..."
      @attributes.each do |attr|
        attribute = Struct::Attribute.new(attr[0], attr[1], attr[2])
        search_type = convert_for_url(attribute.type)
        search_category = convert_for_url(attribute.category)

        search_options = { :search_type => attribute.type,
                           :search_category => attribute.category }

        options = { 'num' => 100, 'radius' => 25, 
                    'type' => search_type,
                    'category' => search_category }
        if attribute.subcategory
          search_subcategory = convert_for_url(attribute.subcategory)

          sub_category_search = { :search_subcategory => attribute.subcategory }
          sub_category_option = { 'subcategory' => search_subcategory }

          search_options.merge!(sub_category_search) if attribute.subcategory
          options.merge!(sub_category_option) if attribute.subcategory
        end
          
          simplegeo_places = SimpleGeo::Client.get_places(location.latitutde.to_f,
                                                          location.longitude.to_f,
                                                          options)
        json_places = JSON.parse(simplegeo_places.to_json)["features"]
        p json_places.size
        Location.save_places(json_places, search_options)
      end
      p "done!"
    end
  end

  private
  def self.convert_for_url(option)
    return unless option
    option = option.gsub(/ /, "_")
    option.gsub(/&/, "_")
  end
end

class DbSearcher

  def initialize
    authorize_simplegeo
    DataStasher.stash
    DataStasher.create_queries
    puts 'finished!'
  end

  def authorize_simplegeo
    #keys for jleo3"
    oauth_key = "mgmMcgt8BNjTpkGAP6rXmEHyVbGSg3eg"
    oauth_secret = "6yX9Qv5Zug2mwYAHf3Kcp4XRKgCN3ggH"

    #keys for joe_leo46"
    #oauth_key = "ALpugQGGGvBv5ZwhYb4CL2Bensxtdy2M"
    #oauth_secret = "gRFJuQLsLmps2RxUBu6H7yLEZvtxArqJ"
    SimpleGeo::Client.set_credentials(oauth_key, oauth_secret)
  end

end

task :search_db => :environment do
  DbSearcher.new
end
