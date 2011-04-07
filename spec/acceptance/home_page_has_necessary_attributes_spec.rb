require File.expand_path(File.dirname(__FILE__) + '/acceptance_helper')

feature "home page has necessary attributes", %q{
  In order to provide more detailed searches
  As a user
  I want to select categories from dropdown boxes.
} do

  scenario "I visit the home page" do
    visit homepage
    page.should have_css "#search_type", :count => 1
    page.should have_css "#search_category", :count => 1
    page.should have_css "#search_subcategory", :count => 1
  end

  scenario "First type should be populated", :js => true do
    visit homepage
    page.should have_css("#search_type", :text => "Choose Type")

    ["Entertainment", "Food & Drink", "Retail Goods", "Services"].each do |element|
      page.select element, :from => "search_type"
      page.should have_css("#search_type", :text => element)
    end
  end

  scenario "Entertainment should have appropriate categories", :js => true do
    visit homepage
    select_entertainment_type

    ["Arena", "Cinema", "Museum"].each do |element|
      page.select element, :from => "search_category"
      page.should have_css("#search_subcategory", :text => "Choose Subcategory")
    end
  end
end
