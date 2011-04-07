module NavigationHelpers
  # Put helper methods related to the paths in your application here.

  def homepage
    "/locations"
  end

  def select_entertainment_type
    page.select "Entertainment", :from => "search_type" 
  end
  
end

RSpec.configuration.include NavigationHelpers, :type => :acceptance
