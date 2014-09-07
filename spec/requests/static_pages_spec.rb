require 'spec_helper'

describe "StaticPages" do

  describe "Home Page" do
    it "should have 'Join Now' " do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/'
      expect(page).to have_content("Join Now")
    end
  end

end
