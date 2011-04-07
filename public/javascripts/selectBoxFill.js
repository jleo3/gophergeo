var allTypes = new Array(
    { id: 'none', name: 'Choose Type' },
    { id: 'entertainment', name: 'Entertainment' },
    { id: 'food_and_drink', name: 'Food & Drink' },
    { id: 'retail_goods', name: 'Retail Goods' },
    { id: 'services', name: 'Services' });

var entertainmentCategories = new Array(
    { id: 'none', name: 'Choose Category' },
    { id: 'arena', name: 'Arena' },
    { id: 'arts_and_performance', name: 'Arts & Performance' },
    { id: 'casinos_and_gambling', name: 'Casinos & Gambling' },
    { id: 'cinema', name: 'Cinema' },
    { id: 'museum', name: 'Museum' },
    { id: 'recreation', name: 'Recreation' },
    { id: 'sports_and_exercise', name: 'Sports & Exercise' },
    { id: 'travel', name: 'Travel' });

var foodAndDrinkCategories = new Array(
    { id: 'none', name: 'Choose Category' },
    { id: 'bagels', name: 'Bagels' },
    { id: 'bakery', name: 'Bakery' },
    { id: 'bars_and_pubs', name: 'Bars & Pubs' },
    { id: 'brewery', name: 'Brewery' },
    { id: 'cafe', name: 'Cafe' },
    { id: 'coffee_and_tea', name: 'Coffee & Tea' },
    { id: 'deli', name: 'Deli' },
    { id: 'distillery', name: 'Distillery' },
    { id: 'donuts', name: 'Donuts' },
    { id: 'fast_food', name: 'Fast Food' },
    { id: 'food_court', name: 'Food Court' },
    { id: 'ice_cream', name: 'Ice Cream' },
    { id: 'internet_cafe', name: 'Internet Cafe' },
    { id: 'juice_bar', name: 'Juice Bar' },
    { id: 'restaurant', name: 'Restaurant' },
    { id: 'tea_room', name: 'Tea Room' },
    { id: 'winery', name: 'Winery' });

var retailGoodsCategories = new Array(
    { id: 'none', name: 'Choose Category' },
    { id: 'autos_and_motor_vehicles', name: 'Autos & Motor Vehicles' },
    { id: 'food_and_beverages', name: 'Food & Beverages' },
    { id: 'home_and_garden', name: 'Home & Garden' },
    { id: 'shopping', name: 'Shopping' });

var servicesCategories = new Array(
    { id: 'none', name: 'Choose Category' },
    { id: 'organizations', name: 'Organizations' },
    { id: 'personal', name: 'Personal' },
    { id: 'retail', name: 'Retail' });

var arenaSubcategories = new Array(
    { id: 'none', name: 'Choose Subcategory' },
    { id: 'auto_racetrack', name: 'Auto Racetrack' },
    { id: 'bull_riding', name: 'Bull Riding' },
    { id: 'horse_racetrack', name: 'Horse Racetrack' },
    { id: 'indoor_arena', name: 'Indoor Arena' },
    { id: 'sports_club', name: 'Sports Club' },
    { id: 'stadium', name: 'Stadium' });

var artsSubcategories = new Array(
    { id: 'none', name: 'Choose Subcategory' },
    { id: 'art_gallery', name: 'Art Gallery' },
    { id: 'arts_center', name: 'Arts Center' },
    { id: 'circus', name: 'Circus' },
    { id: 'dance', name: 'Dance' },
    { id: 'festival', name: 'Festival' },
    { id: 'jazz_and_blues', name: 'Jazz & Blues' },
    { id: 'music', name: 'Music' },
    { id: 'opera', name: 'Opera' },
    { id: 'symphony', name: 'Symphony' },
    { id: 'theater', name: 'Theater' });

var noSubcategories = new Array(
    { id: 'none', name: 'No Subcategories' });

var cinemaSubcategories = new Array(
    { id: 'none selected', name: 'Choose Subcategory' },
    { id: 'drive-in_theater', name: 'Drive-In Theater' },
    { id: 'movie_rental', name: 'Movie Rental' },
    { id: 'movie_theater', name: 'Movie Theater' });

var museumSubcategories = new Array(
    { id: 'none', name: 'Choose Subcategory' },
    { id: 'aquarium', name: 'Aquarium' },
    { id: 'art_museum', name: 'Art Museum' },
    { id: 'botanical_garden', name: 'Botanical Garden' },
    { id: 'history_museum', name: 'History Museum' },
    { id: 'observatory', name: 'Observatory' },
    { id: 'science_museum', name: 'Science Museum' },
    { id: 'zoo', name: 'Zoo' });

var recreationSubcategories = new Array(
    { id: 'none', name: 'Choose Subcategory' },
    { id: 'amusement_park', name: 'Amusement Park' },
    { id: 'arcade', name: 'Arcade' },
    { id: 'barbecue', name: 'Barbecue' },
    { id: 'boat_charter', name: 'Boat Charter' },
    { id: 'campground', name: 'Campground' },
    { id: 'dance_hall', name: 'Dance Hall' },
    { id: 'dog_park', name: 'Dog Park' },
    { id: 'fishing', name: 'Fishing' },
    { id: 'gardens', name: 'Gardens' },
    { id: 'go_karts', name: 'Go Karts' },
    { id: 'gun_range', name: 'Gun Range' },
    { id: 'marina', name: 'Marina' },
    { id: 'miniature_golf', name: 'Miniature Golf' },
    { id: 'picnic_area', name: 'Picnic Area' },
    { id: 'playground', name: 'Playground' },
    { id: 'sailing_club', name: 'Sailing Club' },
    { id: 'theme_park', name: 'Theme Park' },
    { id: 'water_park', name: 'Water Park' });

var sportsSubcategories = new Array(
    { id: 'none', name: 'Choose Subcategory' },
    { id: 'athletic_track', name: 'Athletic Track' },
    { id: 'bicycle_rental', name: 'Bicycle Rental' },
    { id: 'bowling', name: 'Bowling' },
    { id: 'climbing_gym', name: 'Climbing Gym' },
    { id: 'golf', name: 'Golf' },
    { id: 'gym', name: 'Gym' },
    { id: 'ice_rink', name: 'Ice Rink' },
    { id: 'playing_field', name: 'Playing Field' },
    { id: 'race_track', name: 'Race Track' },
    { id: 'skate_park', name: 'Skate Park' },
    { id: 'ski_resort', name: 'Ski Resort' },
    { id: 'ski_slope', name: 'Ski Slope' },
    { id: 'sports_center', name: 'Sports Center' },
    { id: 'stables', name: 'Stables' },
    { id: 'swimming_pool', name: 'Swimming Pool' },
    { id: 'tennis_court', name: 'Tennis Court' },
    { id: 'winter_sports', name: 'Winter Sports' });

var travelSubcategories = new Array(
    { id: 'none', name: 'Choose Subcategory' },
    { id: 'bed_and_breakfast', name: 'Bed & Breakfast' },
    { id: 'campground', name: 'Campground' },
    { id: 'chalets', name: 'Chalets' },
    { id: 'hostel', name: 'Hostel' },
    { id: 'hotels_and_motels', name: 'Hotels & Motels' },
    { id: 'resort', name: 'Resort' },
    { id: 'travel_agent', name: 'Travel Agent' });

var barsSubcategories = new Array(
    { id: 'none', name: 'Choose Subcategory' },
    { id: 'biergarten', name: 'Biergarten' },
    { id: 'champagne_bar', name: 'Champagne Bar' },
    { id: 'dive_bar', name: 'Dive Bar' },
    { id: 'gay_bar', name: 'Gay Bar' },
    { id: 'hookah_bar', name: 'Hookah Bar' },
    { id: 'lounge', name: 'Lounge' },
    { id: 'nightclub', name: 'Nightclub' },
    { id: 'oxygen_bar', name: 'Oxygen Bar' },
    { id: 'sports_bar', name: 'Sports Bar' },
    { id: 'wine_bar', name: 'Wine Bar' });

var autosSubcategories = new Array(
    { id: 'none', name: 'Choose Subcategory' },
    { id: 'automobile_sales', name: 'Automobile Sales' },
    { id: 'motorcylce_sales', name: 'Motorcycle Sales' });

var foodSubcategories = new Array(
    { id: 'none', name: 'Choose Subcategory' },
    { id: 'bakery', name: 'Bakery' },
    { id: 'candy', name: 'Candy' },
    { id: 'cheese', name: 'Cheese' },
    { id: 'chocolate', name: 'Chocolate' },
    { id: 'dairy', name: 'Dairy' },
    { id: 'ethnic_foods', name: 'Ethnic Foods' },
    { id: 'farmers_market', name: 'Farmers Market' },
    { id: 'fruits_and_vegetebales', name: 'Fruits & Vegetables' },
    { id: 'groceries_and_convenience_stores', name: 'Groceries & Convenience Stores' },
    { id: 'liquor_and_beverages', name: 'Liquor & Beverages' },
    { id: 'meat_and_fish', name: 'Meat & Fish' },
    { id: 'specialty', name: 'Specialty' },
    { id: 'supermarket', name: 'Supermarket' });

var homeAndGardenSubcategories = new Array(
    { id: 'none', name: 'Choose Subcategory' },
    { id: 'building_materials', name: 'Building Materials' },
    { id: 'carpets_and_floor_coverings', name: 'Carpets & Floor Coverings' },
    { id: 'furniture', name: 'Furniture' },
    { id: 'garden_supply', name: 'Garden Supply' },
    { id: 'hardware', name: 'Hardware' },
    { id: 'home_furnishings', name: 'Home Furnishings' },
    { id: 'household_appliances', name: 'Household Appliances' },
    { id: 'kitchen_supply', name: 'Kitchen Supply' },
    { id: 'mobile_homes', name: 'Mobile Homes' });

var shoppingSubcategories = new Array(
    { id: 'none', name: 'Choose Subcategory' },
    { id: 'adult', name: 'Adult' },
    { id: 'antiques', name: 'Antiques' },
    { id: 'baby_store', name: 'Baby Store' },
    { id: 'beauty_and_cosmetics', name: 'Beauty & Cosmetics' },
    { id: 'bicycles_and_sporting_goods', name: 'Bicycles & Sporting Goods' },
    { id: 'books', name: 'Books' },
    { id: 'bridal', name: 'Bridal' },
    { id: 'comic_books', name: 'Comic Books' },
    { id: 'computers_and_home_electronics', name: 'Computers & Home Electronics' },
    { id: 'crafts_and_fabrics', name: 'Crafts & Fabrics' },
    { id: 'department_store', name: 'Department Store' },
    { id: 'discount_and_variety_stores', name: 'Discount & Variety Stores' },
    { id: 'florist', name: 'Florist' },
    { id: 'gifts_and_souvenirs', name: 'Gifts & Souvenirs' },
    { id: 'jewelry', name: 'Jewelry' },
    { id: 'luggage_and_leather_goods', name: 'Luggage & Leather Goods' },
    { id: 'mobile_phones', name: 'Mobile Phones' },
    { id: 'music', name: 'Music' },
    { id: 'musical_instruments', name: 'Musical Instruments' },
    { id: 'news', name: 'News' },
    { id: 'optical_goods', name: 'Optical Goods' },
    { id: 'party_supplies', name: 'Party Supplies' },
    { id: 'pets_and_pet_supplies', name: 'Pets & Pet Supplies' },
    { id: 'pharmacy', name: 'Pharmacy' },
    { id: 'photographic_equipment', name: 'Photographic Equipment' },
    { id: 'shoes', name: 'Shoes' },
    { id: 'stationery_and_office_supplies', name: 'Stationery & Office Supplies' },
    { id: 'thrift_store', name: 'Thrift Store' },
    { id: 'tobacco', name: 'Tobacco' },
    { id: 'used_merchandise', name: 'Used Merchandise' },
    { id: 'toys_hobbies_and_games', name: 'Toys, Hobbies & Games' });

var organizationsSubcategories = new Array(
    { id: 'none', name: 'Choose Subcategory' },
    { id: 'community_association', name: 'Community Association' },
    { id: 'labor_organization', name: 'Labor Organization' },
    { id: 'membership_organization', name: 'Membership Organization' },
    { id: 'non-profit_organization', name: 'Non-Profit Organization' },
    { id: 'political_organization', name: 'Political Organization' },
    { id: 'professional_association', name: 'Professional Association' },
    { id: 'religious_organization', name: 'Religious Organization' });

var personalSubcategories = new Array(
    { id: 'none', name: 'Choose Subcategory' },
    { id: 'adult', name: 'Adult' },
    { id: 'barber', name: 'Barber' },
    { id: 'beauty_salon', name: 'Beauty Salon' },
    { id: 'day_spa', name: 'Day Spa' },
    { id: 'hair_removal', name: 'Hair Removal' },
    { id: 'massage', name: 'Massage' },
    { id: 'nail_salon', name: 'Nail Salon' },
    { id: 'piercing', name: 'Piercing' },
    { id: 'psychics_and_astrologers', name: 'Psychics & Astrologers' },
    { id: 'sauna', name: 'Sauna' },
    { id: 'shoe_repair_and_shine', name: 'Shoe Repair & Shine' },
    { id: 'skin_care', name: 'Skin Care' },
    { id: 'tanning_parlor', name: 'Tanning Parlor' },
    { id: 'tattoo_parlor', name: 'Tattoo Parlor' });

var retailSubcategories = new Array(
    { id: 'none', name: 'Choose Subcategory' },
    { id: 'laundry_and_dry_cleaning', name: 'Laundry & Dry Cleaning' });

$(document).ready(function() {
  fillSearchTypes(allTypes);

  $('#search_type').change(function() {
    $('#search_category').removeAttr('Disabled');
    $('#search_subcategory').empty();
    var selectedType = $('#search_type').val();
    fillSearchCategories($('#search_category'), selectedType);
  });

  $('#search_category').change(function() {
    $('#search_subcategory').removeAttr('Disabled');
    var selectedCategory = $('#search_category').val();
    fillSearchSubCategories(selectedCategory);
  });

  function fillSearchTypes(selectors) {
    Array.forEach(selectors, function(sub) {
      $('#search_type').append("<option value=" + sub.id + ">" + sub.name + "</option>");
    });
  };

  function fillSelectBox(selectors) {
    $('#search_subcategory').empty();
    Array.forEach(selectors, function(sub) {
      $('#search_subcategory').append("<option value=" + sub.id + ">" + sub.name + "</option>");
    });
  };

  function fillSearchSubCategories(selectedCategory) {
    switch (selectedCategory) {
      case 'arena':
        fillSelectBox(arenaSubcategories);
        break;
      case 'arts_and_performance':
        fillSelectBox(artsSubcategories);
        break;
      case 'casinos_and_gambling':
        fillSelectBox(noSubcategories);
        break;
      case 'cinema':
        fillSelectBox(cinemaSubcategories);
        break;
      case 'museum':
        fillSelectBox(museumSubcategories);
        break;
      case 'recreation':
        fillSelectBox(recreationSubcategories);
        break;
      case 'sports_and_exercise':
        fillSelectBox(sportsSubcategories);
        break;
      case 'travel':
        fillSelectBox(travelSubcategories);
        break;
      case 'bagels':
        fillSelectBox(noSubcategories);
        break;
      case 'bakery':
        fillSelectBox(noSubcategories);
        break;
      case 'bars_and_pubs':
        fillSelectBox(barsSubcategories);
        break;
      case 'brewery':
        fillSelectBox(noSubcategories);
        break;
      case 'cafe':
        fillSelectBox(noSubcategories);
        break;
      case 'coffee_and_tea':
        fillSelectBox(noSubcategories);
        break;
      case 'deli':
        fillSelectBox(noSubcategories);
        break;
      case 'distillery':
        fillSelectBox(noSubcategories);
        break;
      case 'donuts':
        fillSelectBox(noSubcategories);
        break;
      case 'fast_food':
        fillSelectBox(noSubcategories);
        break;
      case 'food_court':
        fillSelectBox(noSubcategories);
        break;
      case 'ice_cream':
        fillSelectBox(noSubcategories);
        break;
      case 'internet_cafe':
        fillSelectBox(noSubcategories);
        break;
      case 'juice_bar':
        fillSelectBox(noSubcategories);
        break;
      case 'restaurant':
        fillSelectBox(noSubcategories);
        break;
      case 'tea_room':
        fillSelectBox(noSubcategories);
        break;
      case 'winery':
        fillSelectBox(noSubcategories);
        break;
      case 'autos_and_motor_vehicles':
        fillSelectBox(autosSubcategories);
        break;
      case 'food_and_beverages':
        fillSelectBox(foodSubcategories);
        break;
      case 'home_and_garden':
        fillSelectBox(homeAndGardenSubcategories);
        break;
      case 'shopping':
        fillSelectBox(shoppingSubcategories);
        break;
      case 'organizations':
        fillSelectBox(organizationsSubcategories);
        break;
      case 'personal':
        fillSelectBox(personalSubcategories);
        break;
      case 'retail':
        fillSelectBox(retailSubcategories);
        break;
    }
  };

  function fillSearchCategories(select_box, selectedType) {
    switch (selectedType) {
      case 'entertainment':
        $('#search_category').empty();
        Array.forEach(entertainmentCategories, function(cat) {
          $('#search_category').append("<option value=" + cat.id + ">" + cat.name + "</option>");
        });
        break;
    case 'food_and_drink':
        $('#search_category').empty();
        Array.forEach(foodAndDrinkCategories, function(cat) {
          $('#search_category').append("<option value=" + cat.id + ">" + cat.name + "</option>");
        });
        break;
    case 'retail_goods':
        $('#search_category').empty();
        Array.forEach(retailGoodsCategories, function(cat) {
          $('#search_category').append("<option value=" + cat.id + ">" + cat.name + "</option>");
        });
        break;
    case 'services':
        $('#search_category').empty();
        Array.forEach(servicesCategories, function(cat) {
          $('#search_category').append("<option value=" + cat.id + ">" + cat.name + "</option>");
        });
        break;
    }
  
 };
});
