require 'spec_helper'

describe "StaticPages" do

  describe "Home Page" do
    it "should have 'Discover. Organize. Share' " do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/'
      expect(page).to have_content("Discover. Organize. Share.")
    end
  end

end
