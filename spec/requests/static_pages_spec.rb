require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    it "should have the content 'sample App'" do
      visit '/static_page/home'
      page.should have_content('Sample App')
    end
    it "should have the right title" do
       visit '/static_page/home'
       page.should have_selector('title', :text => "Ruby on Rails Tutotial Sample App | Home")
    end

  end

  describe "About Page" do
  	   it "should have the content 'About Us'" do
	      visit '/static_page/about'
	      page.should have_content('About Us')
	   end
  end
end
