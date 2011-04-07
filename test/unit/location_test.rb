require File.dirname(__FILE__) + '/../test_helper'

class LocationTest < ActiveSupport::TestCase
  SIMPLEGEO_ID = "SG_1y80O57DAwt4gGaFV8OPaG_37.772381_-122.405827"
  NAME = "SimpleGeo"
  CITY = "San Francisco"
  ADDRESS = "41 Decatur St"
  OWNER = "simplegeo" 
  COUNTRY = "US"
  POSTAL_CODE = "94103"
  PROVINCE = "CA"
  PHONE = "+1 415 413-7436"
  WEBSITE = "www.simplegeo.com"
  LONG = -122.405827
  LAT = 37.772381
  CATEGORY = "Structure"
  SUBCATEGORY = "Office Building" 
  CATEGORY_TYPE = "Public Place"
  JSON_LINK = "http://api.simplegeo.com/1.0/features/SG_1y80O57DAwt4gGaFV8OPaG_37.772381_-122.405827.json"
  JSON_LOCATION = {"id"=>SIMPLEGEO_ID, "type"=>"Feature", "geometry"=>{"coordinates"=>[LONG, LAT], "type"=>"Point"}, "properties"=>{"href"=>JSON_LINK, "city"=>CITY, "address"=>ADDRESS, "name"=>NAME, "country"=>COUNTRY, "postcode"=>POSTAL_CODE, "tags"=>["simplegeo", "startup"], "website"=>WEBSITE, "phone"=>PHONE, "classifiers"=>[{"category"=>CATEGORY, "subcategory"=>SUBCATEGORY, "type"=>CATEGORY_TYPE}], "province"=>PROVINCE, "owner"=>OWNER}}

  def test_can_save_a_location
    location = Location.save_places([JSON_LOCATION]).first

    assert_equal SIMPLEGEO_ID, location.simplegeo_id
    assert_equal NAME, location.name
    assert_equal CITY, location.city
    assert_equal ADDRESS, location.address
    assert_equal PROVINCE, location.province
    assert_equal COUNTRY, location.country
    assert_equal POSTAL_CODE, location.postal_code
    assert_equal WEBSITE, location.website
    assert_equal PHONE, location.phone
    assert_equal OWNER, location.owner
    assert_equal LAT, location.lat
    assert_equal LONG, location.long
    assert_equal CATEGORY, location.category
    assert_equal SUBCATEGORY, location.subcategory
    assert_equal CATEGORY_TYPE, location.category_type
    assert_equal JSON_LINK, location.json_link
  end

  def test_does_not_save_duplicate_entries
    two_locations = [JSON_LOCATION, JSON_LOCATION] 
    locations = Location.save_places(two_locations)
    
    assert_equal 1, Location.count
  end

=begin
  def test_does_not_save_entries_that_dont_match_category_type
    non_matching_category_type = "services"
    correct_category_type = "entertainment"
    json_location = {"id"=>SIMPLEGEO_ID, "type"=>"Feature", "geometry"=>{"coordinates"=>[LONG, LAT], "type"=>"Point"}, "properties"=>{"href"=>JSON_LINK, "city"=>CITY, "address"=>ADDRESS, "name"=>NAME, "country"=>COUNTRY, "postcode"=>POSTAL_CODE, "tags"=>["simplegeo", "startup"], "website"=>WEBSITE, "phone"=>PHONE, "classifiers"=>[{"category"=>CATEGORY, "subcategory"=>SUBCATEGORY, "type"=>correct_category_type}], "province"=>PROVINCE, "owner"=>OWNER}}
    location = Location.new
    Location.expects(:new).returns(location)
    location.expects(:save!).never

    Location.save_places([json_location], 
                         { :search_type => non_matching_category_type })
  end
=end
  
  def test_does_not_save_entries_that_dont_match_category
    matching_category_type = "entertainment"
    non_matching_category = "museum"
    json_location = {"id"=>SIMPLEGEO_ID, "type"=>"Feature", "geometry"=>{"coordinates"=>[LONG, LAT], "type"=>"Point"}, "properties"=>{"href"=>JSON_LINK, "city"=>CITY, "address"=>ADDRESS, "name"=>NAME, "country"=>COUNTRY, "postcode"=>POSTAL_CODE, "tags"=>["simplegeo", "startup"], "website"=>WEBSITE, "phone"=>PHONE, "classifiers"=>[{"category"=>non_matching_category, "subcategory"=>SUBCATEGORY, "type"=>matching_category_type}], "province"=>PROVINCE, "owner"=>OWNER}}
    location = Location.new
    Location.expects(:new).returns(location)
    location.expects(:save!).never

    Location.save_places([json_location], 
      { :search_type => matching_category_type, 
        :seach_category => non_matching_category})
  end

  def test_does_not_save_entries_that_dont_match_category
    matching_category_type = "entertainment"
    matching_category = "museum"
    non_matching_subcategory = "aquarium"
    json_location = {"id"=>SIMPLEGEO_ID, "type"=>"Feature", "geometry"=>{"coordinates"=>[LONG, LAT], "type"=>"Point"}, "properties"=>{"href"=>JSON_LINK, "city"=>CITY, "address"=>ADDRESS, "name"=>NAME, "country"=>COUNTRY, "postcode"=>POSTAL_CODE, "tags"=>["simplegeo", "startup"], "website"=>WEBSITE, "phone"=>PHONE, "classifiers"=>[{"category"=>matching_category, "subcategory"=>SUBCATEGORY, "type"=>matching_category_type}], "province"=>PROVINCE, "owner"=>OWNER}}
    location = Location.new
    Location.expects(:new).returns(location)
    location.expects(:save!).never

    Location.save_places([json_location], 
      { :search_type => matching_category_type, 
        :seach_category => matching_category,
        :search_subcategory => non_matching_subcategory })
  end
 end
