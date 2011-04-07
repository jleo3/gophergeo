class Location < ActiveRecord::Base

  def self.save_places(places, search_options=nil)
    all_locations = []
    places.each do |place|
      location = Hash.new
      location[:simplegeo_id] = place["id"]
      next if location_already_saved(location[:simplegeo_id])
      location[:lat]= place["geometry"]["coordinates"][1]
      location[:long] = place["geometry"]["coordinates"][0]

      location[:json_link] = place["properties"]["href"]
      location[:name] = place["properties"]["name"]
      location[:city] = place["properties"]["city"]
      location[:address] = place["properties"]["address"]
      location[:province] = place["properties"]["province"]
      location[:country] = place["properties"]["country"]
      location[:postal_code] = place["properties"]["postcode"]
      location[:website] = place["properties"]["website"]
      location[:phone] = place["properties"]["phone"]
      location[:owner] = place["properties"]["owner"]

      classifiers = place["properties"]["classifiers"].first
      next unless classifiers
      location[:category] = classifiers["category"]
      location[:subcategory] = classifiers["subcategory"]
      location[:category_type] = classifiers["type"]
      
      all_locations << location
    end
    Location.create!(all_locations)
  end

  private
  def self.location_already_saved(location_id)
    Location.find_by_simplegeo_id(location_id)
  end

  def self.convert_for_db(option)
    return unless option
    option = option.gsub(/_/, " ")
    option.gsub(/and/, "&")
  end
end
