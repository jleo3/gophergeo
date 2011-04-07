require File.dirname(__FILE__) + '/../test_helper'
require 'locations_controller'

class LocationsController; attr_reader :lat, :long; end

class LocationsControllerTest < ActionController::TestCase

  def test_get_location_from_simplegeo
    assert_difference 'Location.count', 100 do
      post :create, { :location => { :lat => 40.7286, :long => -73.9758 } }
    end
    assert_equal 100, Location.count
  end

  def test_get_location_with_type
    lat = 40.7286
    long = -73.9758
    search_type = "entertainment"
    post :create, { :location => { :lat => lat, :long => long },
                    :search_type => search_type  }
    assert_response :success
    assert Location.find_by_category_type search_type.capitalize
    non_matching_types = [ "Food & Drink", "Retail Goods", "Services" ]
    non_matching_types.each do |type|
      assert !Location.find_by_category_type(type)
    end
  end

  def test_get_location_with_type_and_category
    lat = 40.7286
    long = -73.9758
    search_type = "entertainment"
    search_category = "sports_and_exercise"
    post :create, { :location => { :lat => lat, :long => long },
                    :search_type => search_type,
                    :search_category => search_category  }
    assert_response :success
    assert Location.find_by_category_type search_type.capitalize
    assert Location.find_by_category "Sports & Exercise"
    non_matching_categories = [ "Arts & Performance", "Casinos & Gambling",
                                "Cinema", "Museum", "Recreation",
                                "Arena", "Travel" ]
    non_matching_categories.each do |cat|
      assert !Location.find_by_category(cat)
    end
  end

  def test_get_location_with_type_and_category_and_subcategory
    lat = 40.7286
    long = -73.9758
    search_type = "entertainment"
    search_category = "sports_and_exercise"
    search_subcategory = "gym"
    post :create, { :location => { :lat => lat, :long => long },
                    :search_type => search_type,
                    :search_category => search_category,
                    :search_subcategory => search_subcategory  }
    assert_response :success
    assert Location.find_by_category_type search_type.capitalize
    assert Location.find_by_category "Sports & Exercise"
    assert Location.find_by_subcategory search_subcategory.capitalize
    non_matching_subcategories = 
      [ "Athletic Track", "Bicycle Rental", "Bowling", "Climbing Gym",
        "Golf", "Ice Rink", "Playing Field", "Race Tracm", "Skate Park",
        "Ski Resort", "Ski Slope", "Sports Center", "Stables",
        "Swimming Pool", "Tennis Court", "Winter Sports"]
    non_matching_subcategories.each do |cat|
      assert !Location.find_by_subcategory(cat)
    end
  end

  def test_get_location_with_type_and_category_subcategory_none
    lat = 40.7286
    long = -73.9758
    search_type = "entertainment"
    search_category = "arena"
    search_subcategory = "none"
    post :create, { :location => { :lat => lat, :long => long },
                    :search_type => search_type,
                    :search_category => search_category  }
    assert_response :success
    assert Location.find_by_category_type search_type.capitalize
    assert Location.find_by_category search_category.capitalize
    non_matching_categories = [ "Arts & Performance", "Casinos & Gambling",
                                "Cinema", "Museum", "Recreation",
                                "Sports & Exercise", "Travel" ]
    non_matching_categories.each do |cat|
      assert !Location.find_by_category(cat)
    end
  end
end
